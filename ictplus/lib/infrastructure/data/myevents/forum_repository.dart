import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ictplus/domain/data/myevents/comment/comment.dart';
import 'package:ictplus/domain/data/myevents/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/myevents/i_forum_repository.dart';
import 'package:ictplus/domain/data/myevents/poll/poll.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/mods/mod.dart';
import 'package:ictplus/infrastructure/data/myevents/forum_post_dtos/forum_post_dtos.dart';
import 'package:ictplus/infrastructure/data/myevents/poll_dtos/poll_dtos.dart';
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

/*
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
*/
}
