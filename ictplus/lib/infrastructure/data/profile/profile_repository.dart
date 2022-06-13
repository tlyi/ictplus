import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ictplus/domain/auth/i_auth_facade.dart';
import 'package:ictplus/domain/core/errors.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
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
}
