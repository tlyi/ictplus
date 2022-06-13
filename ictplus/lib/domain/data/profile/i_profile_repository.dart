import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/profile.dart';

abstract class IProfileRepository {
  Future<String> getUserId();

  Future<Either<DataFailure, Unit>> create(Profile profile);

  Future<Either<DataFailure, Unit>> update(Profile profile);

  Future<Either<DataFailure, String>> uploadPhoto(File photo);

  Future<Either<DataFailure, Profile>> readOwnProfile();

  Future<Either<DataFailure, Profile>> readOtherProfile(String uuid);

  Future<Either<DataFailure, bool>> verifyUserRegistered();
}
