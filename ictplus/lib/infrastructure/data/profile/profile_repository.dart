import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ictplus/domain/auth/i_auth_facade.dart';
import 'package:ictplus/domain/core/errors.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/forum/following_feed/following_feed.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/infrastructure/data/forum/following_feed_dtos/following_feed_dtos.dart';
import 'package:ictplus/infrastructure/data/forum/forum_post_dtos/forum_post_dtos.dart';
import 'package:ictplus/infrastructure/data/notifications/notification_dtos.dart';
import 'package:ictplus/infrastructure/data/profile/profile_dtos.dart';
import 'package:ictplus/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ProfileRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getUserId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Future<Either<DataFailure, Unit>> create(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);

      await userDoc.set(profileDto.toJson());
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
  Future<Either<DataFailure, Unit>> update(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);

      await userDoc.update(profileDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DataFailure.unableToUpdate());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(File photo) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final String userID = user.id.getOrCrash();

    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('profilePictures')
        .child(userID)
        .child(userID)
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
  Future<Either<DataFailure, Profile>> readOwnProfile() async {
    final userDoc = await _firestore.userDocument();
    try {
      return userDoc.get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, String>> getUsername(String uuid) async {
    try {
      final userDoc = await _firestore.userDocumentById(uuid);
      return userDoc.get().then((DocumentSnapshot doc) => right(
          ProfileDto.fromFirestore(doc).toDomain().username.getOrCrash()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, List<Profile>>> searchProfileByUsername(
      String username) async {
    final searchResults = <Profile>[];
    final usersRef = await _firestore.usersRef();
    try {
      final QuerySnapshot query = await usersRef
          .where('username', isGreaterThanOrEqualTo: username)
          .where('username', isLessThanOrEqualTo: '$username~')
          .where('username', isNotEqualTo: 'anonymous')
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            searchResults.add(ProfileDto.fromFirestore(doc).toDomain());
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
  Future<Either<DataFailure, Profile>> readOtherProfile(String uuid) async {
    final otherUserDoc = await _firestore.userDocumentById(uuid);
    try {
      return otherUserDoc.get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
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

  @override
  Future<Either<DataFailure, bool>> verifyUsernameUnique(
      String username) async {
    final usersRef = await _firestore.usersRef();
    try {
      return await usersRef
          .where('username', isEqualTo: username)
          .get()
          .then((QuerySnapshot querySnapshot) {
        return right(querySnapshot.docs.isEmpty);
      });
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, bool>> verifyUserRegistered() async {
    final userDoc = await _firestore.userDocument();
    try {
      return userDoc.get().then((docSnapshot) {
        final bool userRegistered = docSnapshot.exists;
        return right(userRegistered);
      });
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<bool> checkIfFollowing(String userId) async {
    final usersRef = await _firestore.usersRef();
    final ownId = await getUserId();
    final QuerySnapshot query = await usersRef
        .where('uuid', isEqualTo: ownId)
        .where('following', arrayContains: userId)
        .get();

    return query.docs.isNotEmpty;
  }

  @override
  Future<Either<DataFailure, Unit>> addFollower(String userToFollowId) async {
    try {
      final ownId = await getUserId();
      final ownDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.userDocumentById(userToFollowId);
      final otherUserProfile = await otherUserDoc.get();
      final otherUserForumIds =
          ProfileDto.fromFirestore(otherUserProfile).toDomain().forumsPosted;
      final notifRef = await _firestore.notificationsUserRef(userToFollowId);
      final notifDoc = notifRef.doc();
      final notif = Notification.empty().copyWith(
        senderId: ownId,
        notificationType: 'newFollower',
      );
      final notifDto = NotificationDto.fromDomain(notif).toJson();

      for (final forumId in otherUserForumIds) {
        final forumDoc = await _firestore.forumDocument(forumId);
        final forumPost = await forumDoc.get();
        final followingFeedRef = await _firestore.followingFeedUserRef(ownId);
        final timestamp =
            ForumPostDto.fromFirestore(forumPost).toDomain().timestamp;
        FollowingFeed followingFeed = FollowingFeed.empty().copyWith(
            forumId: forumId,
            posterUserId: userToFollowId,
            timestamp: timestamp);
        final followingFeedDto =
            FollowingFeedDto.fromDomain(followingFeed).toJson();
        await followingFeedRef.doc(forumId).set(followingFeedDto);
      }

      WriteBatch batch = _firestore.batch();
      batch.set(notifDoc, notifDto);
      batch.update(ownDoc, {
        'following': FieldValue.arrayUnion([userToFollowId])
      });
      batch.update(otherUserDoc, {
        'followedBy': FieldValue.arrayUnion([ownId])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> removeFollower(
      String userToFollowId) async {
    try {
      final ownId = await getUserId();
      final ownDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.userDocumentById(userToFollowId);

      final followingFeedRef = await _firestore.followingFeedUserRef(ownId);
      await followingFeedRef
          .where('posterUserId', isEqualTo: userToFollowId)
          .get()
          .then((snapshot) {
        for (final DocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });

      WriteBatch batch = _firestore.batch();
      batch.update(ownDoc, {
        'following': FieldValue.arrayRemove([userToFollowId])
      });
      batch.update(otherUserDoc, {
        'followedBy': FieldValue.arrayRemove([ownId])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, List<Profile>>> retrieveFollowing(
      String userId) async {
    final following = <Profile>[];
    final usersRef = await _firestore.usersRef();
    try {
      final QuerySnapshot query =
          await usersRef.where('followedBy', arrayContains: userId).get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            following.add(ProfileDto.fromFirestore(doc).toDomain());
          }
        }
        return right(following);
      }
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<Profile>>> retrieveFollowers(
      String userId) async {
    final following = <Profile>[];
    final usersRef = await _firestore.usersRef();
    try {
      final QuerySnapshot query =
          await usersRef.where('following', arrayContains: userId).get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            following.add(ProfileDto.fromFirestore(doc).toDomain());
          }
        }
        return right(following);
      }
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveMyForums(
      String userId) async {
    final forumPosts = <ForumPost>[];
    final forumsRef = await _firestore.forumsRef();
    try {
      final QuerySnapshot query = await forumsRef
          .where('posterUserId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            forumPosts.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
        return right(forumPosts);
      }
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
  Future<Either<DataFailure, Unit>> followModule(String moduleCode) async {
    try {
      final userDoc = await _firestore.userDocument();
      WriteBatch batch = _firestore.batch();
      batch.update(userDoc, {
        'modules': FieldValue.arrayUnion([moduleCode])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> unfollowModule(String moduleCode) async {
    try {
      final userDoc = await _firestore.userDocument();
      WriteBatch batch = _firestore.batch();
      batch.update(userDoc, {
        'modules': FieldValue.arrayRemove([moduleCode])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }
}
