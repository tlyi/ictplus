import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ictplus/domain/data/forum/comment/comment.dart';
import 'package:ictplus/domain/data/forum/following_feed/following_feed.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:ictplus/domain/data/forum/poll/poll.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/mods/mod.dart';
import 'package:ictplus/infrastructure/data/forum/comment_dtos/comment_dtos.dart';
import 'package:ictplus/infrastructure/data/forum/following_feed_dtos/following_feed_dtos.dart';
import 'package:ictplus/infrastructure/data/forum/forum_post_dtos/forum_post_dtos.dart';
import 'package:ictplus/infrastructure/data/forum/poll_dtos/poll_dtos.dart';
import 'package:ictplus/infrastructure/data/notifications/notification_dtos.dart';
import 'package:ictplus/infrastructure/data/profile/mods/mod_dtos.dart';
import 'package:ictplus/infrastructure/data/profile/profile_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/infrastructure/core/firestore_helpers.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

@LazySingleton(as: IForumRepository)
class ForumPostRepository implements IForumRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ForumPostRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Future<Either<DataFailure, Unit>> create(
      ForumPost forumPost, String forumId) async {
    try {
      //Create forum
      final time = DateTime.now().millisecondsSinceEpoch.toString();
      final forumsRef = await _firestore.forumsRef();
      final tag = forumPost.tag == '' ? 'General' : forumPost.tag;
      final forumPostDto =
          ForumPostDto.fromDomain(forumPost.copyWith(tag: tag));

      await forumsRef.doc(forumId).set(forumPostDto.toJson());

      final modulesRef = await _firestore.modulesRef();
      await _firestore.runTransaction((transaction) async {
        //Update module last posted
        final tagDoc = modulesRef.doc(tag);
        transaction.update(tagDoc, {'lastPosted': time});

        //Update anonymous last posted
        if (forumPost.isAnon) {
          final anonDoc = modulesRef.doc('Anonymous');
          transaction.update(anonDoc, {'lastPosted': time});
        } else {
          //If not anon, add to followers' feed & own forumsPosted array
          final userDoc = await _firestore.userDocument();
          final ownProfile = await userDoc.get();
          final List<String> followers =
              ProfileDto.fromFirestore(ownProfile).toDomain().followedBy;
          transaction.update(userDoc, {
            'forumsPosted': FieldValue.arrayUnion([forumId])
          });

          FollowingFeed followingFeed = FollowingFeed.empty().copyWith(
              forumId: forumId,
              posterUserId: forumPost.posterUserId,
              timestamp: time);
          final followingFeedDto =
              FollowingFeedDto.fromDomain(followingFeed).toJson();
          for (final String follower in followers) {
            final followingFeedRef =
                await _firestore.followingFeedUserRef(follower);
            final followingFeedDoc = followingFeedRef.doc(forumId);
            transaction.set(followingFeedDoc, followingFeedDto);
          }
        }
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String forumId) async {
    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('forumPictures')
        .child(forumId)
        .child(forumId)
        .putFile(photo);

    try {
      final String url = await storageUploadTask.then((ref) async {
        return ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createPoll(
      Poll poll, String forumId) async {
    try {
      final pollDoc = await _firestore.pollDocument(forumId);
      final pollDto = PollDto.fromDomain(poll);

      await pollDoc.set(pollDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(
      String forumId) async* {
    final forumDoc = await _firestore.forumDocument(forumId);
    yield* forumDoc
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, ForumPost>(
              ForumPostDto.fromFirestore(snapshot).toDomain()),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId) async* {
    final pollsDoc = await _firestore.pollDocument(forumId);
    yield* pollsDoc
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, Poll>(
              PollDto.fromFirestore(snapshot).toDomain()),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Unit>> likeForum(
      ForumPost forum, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final forumDoc = await _firestore.forumDocument(forum.forumId);
        if (forum.posterUserId != userId) {
          final notifRef =
              await _firestore.notificationsUserRef(forum.posterUserId);
          final notifDoc = notifRef.doc();
          final notif = Notification.empty().copyWith(
              senderId: userId,
              notificationType: 'forumLike',
              postId: forum.forumId,
              title: forum.title.getOrCrash(),
              pollAdded: forum.pollAdded);
          final notifDto = NotificationDto.fromDomain(notif).toJson();
          transaction.set(notifDoc, notifDto);
        }
        transaction.update(forumDoc, {
          'likedUserIds': FieldValue.arrayUnion([userId]),
          'likes': FieldValue.increment(1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> unlikeForum(
      String forumId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final forumDoc = await _firestore.forumDocument(forumId);
        transaction.update(forumDoc, {
          'likedUserIds': FieldValue.arrayRemove([userId]),
          'likes': FieldValue.increment(-1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final pollDoc = await _firestore.pollDocument(forumId);
        List<double> voteList = [];
        await pollDoc.get().then((snapshot) {
          voteList = PollDto.fromFirestore(snapshot).toDomain().voteList;
        });
        voteList[index]++;
        transaction.update(pollDoc, {
          'usersWhoVoted.$userId': index, //user[id]=0
          'voteList': voteList,
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createComment(
      Comment comment, ForumPost forum) async {
    try {
      final commentRef = await _firestore.commentsForumRef(forum.forumId);
      final commentDto = CommentDto.fromDomain(comment);

      await commentRef.doc(comment.commentId).set(commentDto.toJson());

      if (comment.userId != forum.posterUserId) {
        final notifRef =
            await _firestore.notificationsUserRef(forum.posterUserId);
        final notifDoc = notifRef.doc();
        final notif = Notification.empty().copyWith(
            senderId: comment.isAnon ? constants.anonUserId : comment.userId,
            notificationType: 'newComment',
            postId: forum.forumId,
            title: forum.title.getOrCrash(),
            details: comment.commentText.getOrCrash(),
            pollAdded: forum.pollAdded);
        final notifDto = NotificationDto.fromDomain(notif).toJson();
        notifDoc.set(notifDto);
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<Comment>>> retrieveComments(
      String sortedBy, String forumId) async* {
    final String orderBy = sortedBy == 'Most Liked' ? 'likes' : 'timestamp';
    final bool descending = sortedBy == 'Oldest' ? false : true;
    final commentsRef = await _firestore.commentsForumRef(forumId);
    yield* commentsRef
        .orderBy(orderBy, descending: descending)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<Comment>>(
            snapshot.docs
                .map((doc) => CommentDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Unit>> likeComment(
      ForumPost forum, Comment comment, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final commentsRef = await _firestore.commentsForumRef(forum.forumId);
        final commentDoc = commentsRef.doc(comment.commentId);
        if (comment.userId != userId) {
          final notifRef =
              await _firestore.notificationsUserRef(comment.userId);
          final notifDoc = notifRef.doc();
          final notif = Notification.empty().copyWith(
              senderId: userId,
              notificationType: 'commentLike',
              postId: forum.forumId,
              title: forum.title.getOrCrash(),
              details: comment.commentText.getOrCrash(),
              pollAdded: forum.pollAdded);
          final notifDto = NotificationDto.fromDomain(notif).toJson();
          transaction.set(notifDoc, notifDto);
        }
        transaction.update(commentDoc, {
          'likedUserIds': FieldValue.arrayUnion([userId]),
          'likes': FieldValue.increment(1),
        });
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> unlikeComment(
      String forumId, String commentId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final commentsRef = await _firestore.commentsForumRef(forumId);
        final commentDoc = commentsRef.doc(commentId);
        transaction.update(commentDoc, {
          'likedUserIds': FieldValue.arrayRemove([userId]),
          'likes': FieldValue.increment(-1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> deleteForum(ForumPost forum) async {
    try {
      final forumDoc = await _firestore.forumDocument(forum.forumId);
      await forumDoc.delete();

      final modulesRef = await _firestore.modulesRef();
      final moduleDoc = modulesRef.doc(forum.tag);
      final String modLastPosted = await moduleDoc
          .get()
          .then((doc) => ModDto.fromFirestore(doc).toDomain().lastPosted);
      if (modLastPosted == forum.timestamp) {
        final forumRef = await _firestore.forumsRef();
        final String newLastPosted = await forumRef
            .where('tag', isEqualTo: forum.tag)
            .orderBy('timestamp', descending: true)
            .limit(1)
            .get()
            .then((doc) {
          if (doc.docs.isEmpty) {
            return '0';
          } else {
            return ForumPostDto.fromFirestore(doc.docs[0]).toDomain().timestamp;
          }
        });
        await _firestore.runTransaction((transaction) async {
          transaction.update(moduleDoc, {'lastPosted': newLastPosted});
        });
      }

      //Recursively deletes each comment doc because of Firestore limitations
      final commentsRef = await _firestore.commentsForumRef(forum.forumId);
      await commentsRef.get().then((snapshot) {
        for (final DocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });

      //Deletes comments/forumId doc
      final commentDoc = await _firestore.commentsDoc(forum.forumId);
      await commentDoc.delete();

      //Deletes Poll if poll exists
      final pollDoc = await _firestore.pollDocument(forum.forumId);
      await pollDoc.get().then((doc) {
        if (doc.exists) {
          pollDoc.delete();
        }
      });

      //Delete photo if exists
      if (forum.photoAdded) {
        _firebaseStorage
            .ref()
            .child('forumPictures/${forum.forumId}/${forum.forumId}')
            .delete()
            .onError((error, stackTrace) => null);
      }

      if (!forum.isAnon) {
        //Remove from their forumsPosted in profile
        final userDoc = await _firestore.userDocument();
        userDoc.update({
          'forumsPosted': FieldValue.arrayRemove([forum.forumId])
        });

        //Remove from followers' feeds
        final ownProfile = await userDoc.get();
        final List<String> followers =
            ProfileDto.fromFirestore(ownProfile).toDomain().followedBy;
        for (final follower in followers) {
          final followingFeedRef =
              await _firestore.followingFeedUserRef(follower);
          await followingFeedRef.doc(forum.forumId).delete();
        }
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<String>>> searchModulesByModuleCode(
      String moduleCode) async {
    final List<String> searchResults = [];
    final modRef = await _firestore.modulesRef();
    try {
      final QuerySnapshot query = await modRef
          .where('moduleCode', isGreaterThanOrEqualTo: moduleCode.toUpperCase())
          .limit(15)
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            if (doc.id.contains(moduleCode.toUpperCase())) {
              searchResults.add(doc.id);
            }
          }
        }

        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Stream<Either<DataFailure, List<Mod>>> retrieveModules() async* {
    final userDoc = await _firestore.userDocument();
    final modulesRef = await _firestore.modulesRef();
    List<String> modulesFollowed = [];
    await userDoc.get().then((DocumentSnapshot doc) {
      modulesFollowed = ProfileDto.fromFirestore(doc).toDomain().modules;
    });

    modulesFollowed.addAll(['Anonymous', 'General']);

    yield* modulesRef
        .where('moduleCode', whereIn: modulesFollowed)
        .orderBy('lastPosted', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return right<DataFailure, List<Mod>>(snapshot.docs.map((doc) {
          return ModDto.fromFirestore(doc).toDomain();
        }).toList());
      },
    ).handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleForumsInitial(
      String moduleCode, String sortedBy) async {
    //['Recent', 'Oldest', 'Most Liked']
    final bool descending = sortedBy == 'Oldest' ? false : true;
    try {
      List<ForumPost> forums = [];
      final forumRef = await _firestore.forumsRef();
      if (moduleCode == "Anonymous") {
        if (sortedBy != 'Most Liked') {
          QuerySnapshot query = await forumRef
              .where('isAnon', isEqualTo: true)
              .orderBy('timestamp', descending: descending)
              .limit(8)
              .get();

          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        } else {
          QuerySnapshot query = await forumRef
              .where('isAnon', isEqualTo: true)
              .orderBy('likes', descending: descending)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        }
      } else {
        if (sortedBy != 'Most Liked') {
          QuerySnapshot query = await forumRef
              .where('tag', isEqualTo: moduleCode)
              .orderBy('timestamp', descending: descending)
              .limit(8)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        } else {
          QuerySnapshot query = await forumRef
              .where('tag', isEqualTo: moduleCode)
              .orderBy('likes', descending: descending)
              .get();

          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        }
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleForumsInBatches(
      String moduleCode,
      String sortedBy,
      String lastTimestamp,
      int lastLikes) async {
    //['Recent', 'Oldest', 'Most Liked']
    bool descending = sortedBy == 'Oldest' ? false : true;

    List<ForumPost> forums = [];
    final forumRef = await _firestore.forumsRef();
    try {
      if (moduleCode == "Anonymous") {
        if (sortedBy != 'Most Liked') {
          QuerySnapshot query = await forumRef
              .where('isAnon', isEqualTo: true)
              .orderBy('timestamp', descending: descending)
              .startAfter([lastTimestamp])
              .limit(8)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        } else {
          QuerySnapshot query = await forumRef
              .where('isAnon', isEqualTo: true)
              .orderBy('likes', descending: descending)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        }
      } else {
        if (sortedBy != 'Most Liked') {
          QuerySnapshot query = await forumRef
              .where('tag', isEqualTo: moduleCode)
              .orderBy('timestamp', descending: descending)
              .startAfter([lastTimestamp])
              .limit(8)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        } else {
          print("Loading more liked?!?!? NO");
          QuerySnapshot query = await forumRef
              .where('tag', isEqualTo: moduleCode)
              .orderBy('likes', descending: descending)
              .get();
          if (query.docs.isNotEmpty) {
            for (final doc in query.docs) {
              forums.add(ForumPostDto.fromFirestore(doc).toDomain());
            }
          }
        }
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>>
      retrieveModuleFeedInitial() async {
    final userDoc = await _firestore.userDocument();
    final forumRef = await _firestore.forumsRef();
    List<String> modulesFollowed = [];
    List<ForumPost> forums = [];

    await userDoc.get().then((DocumentSnapshot doc) {
      modulesFollowed = ProfileDto.fromFirestore(doc).toDomain().modules;
    });

    try {
      if (modulesFollowed.isNotEmpty) {
        QuerySnapshot query = await forumRef
            .where('tag', whereIn: modulesFollowed)
            .orderBy('timestamp', descending: true)
            .limit(8)
            .get();
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            forums.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleFeedInBatches(
      String lastTimestamp) async {
    final userDoc = await _firestore.userDocument();
    final forumRef = await _firestore.forumsRef();
    List<String> modulesFollowed = [];
    List<ForumPost> forums = [];

    await userDoc.get().then((DocumentSnapshot doc) {
      modulesFollowed = ProfileDto.fromFirestore(doc).toDomain().modules;
    });

    try {
      if (modulesFollowed.isNotEmpty) {
        QuerySnapshot query = await forumRef
            .where('tag', whereIn: modulesFollowed)
            .orderBy('timestamp', descending: true)
            .startAfter([lastTimestamp])
            .limit(8)
            .get();
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            forums.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveFriendFeedInitial(
      String userId) async {
    List<String> forumIds = [];
    List<ForumPost> forums = [];
    final followingFeedUserRef = await _firestore.followingFeedUserRef(userId);
    final forumRef = await _firestore.forumsRef();
    try {
      QuerySnapshot query = await followingFeedUserRef
          .orderBy('timestamp', descending: true)
          .limit(8)
          .get();
      if (query.docs.isNotEmpty) {
        for (final doc in query.docs) {
          forumIds.add(FollowingFeedDto.fromFirestore(doc).toDomain().forumId);
        }
      }
      for (final forumId in forumIds) {
        final doc = await forumRef.doc(forumId).get();
        forums.add(ForumPostDto.fromFirestore(doc).toDomain());
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveFriendFeedInBatches(
      String userId, String lastTimestamp) async {
    List<String> forumIds = [];
    List<ForumPost> forums = [];
    final followingFeedUserRef = await _firestore.followingFeedUserRef(userId);
    final forumRef = await _firestore.forumsRef();
    try {
      QuerySnapshot query = await followingFeedUserRef
          .orderBy('timestamp', descending: true)
          .startAfter([lastTimestamp])
          .limit(8)
          .get();
      if (query.docs.isNotEmpty) {
        for (final doc in query.docs) {
          forumIds.add(FollowingFeedDto.fromFirestore(doc).toDomain().forumId);
        }
      }
      for (final forumId in forumIds) {
        final doc = await forumRef.doc(forumId).get();
        forums.add(ForumPostDto.fromFirestore(doc).toDomain());
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> searchForumByTitle(
      String queryStr) async {
    final searchResults = <ForumPost>[];
    final forumRef = await _firestore.forumsRef();
    try {
      QuerySnapshot query = await forumRef
          .where('keywords', arrayContains: queryStr.toLowerCase())
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            searchResults.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid) async {
    try {
      final usersRef = await _firestore.usersRef();
      return usersRef.doc(uuid).get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }
}
