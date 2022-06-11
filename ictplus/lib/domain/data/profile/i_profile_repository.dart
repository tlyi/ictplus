import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/profile/profile.dart';

abstract class IProfileRepository {
  Future<String> getUserId();

  Future<Either<DataFailure, Unit>> create(Profile profile);

  Future<Either<DataFailure, Unit>> update(Profile profile);

  Future<Either<DataFailure, String>> uploadPhoto(File photo);

  Future<Either<DataFailure, Profile>> readOwnProfile();

  Future<Either<DataFailure, String>> getUsername(String uuid);

  Future<Either<DataFailure, Profile>> readOtherProfile(String uuid);

  Future<Either<DataFailure, List<Profile>>> searchProfileByUsername(
      String username);

  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);

  Future<Either<DataFailure, bool>> verifyUsernameUnique(String username);

  Future<Either<DataFailure, bool>> verifyUserRegistered();

  Future<bool> checkIfFollowing(String userId);

  Future<Either<DataFailure, Unit>> addFollower(String userToFollowId);

  Future<Either<DataFailure, Unit>> removeFollower(String userToFollowId);

  Future<Either<DataFailure, List<Profile>>> retrieveFollowing(String userId);

  Future<Either<DataFailure, List<Profile>>> retrieveFollowers(String userId);

  Future<Either<DataFailure, List<ForumPost>>> retrieveMyForums(String userId);

  Future<Either<DataFailure, List<String>>> searchModulesByModuleCode(
      String moduleCode);

  Future<Either<DataFailure, Unit>> followModule(String moduleCode);

  Future<Either<DataFailure, Unit>> unfollowModule(String moduleCode);
}
