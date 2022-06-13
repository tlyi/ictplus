import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/myevents/comment/comment.dart';
import 'package:ictplus/domain/data/myevents/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/myevents/poll/poll.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/mods/mod.dart';

abstract class IForumRepository {
  Future<String> getOwnId();

  Future<Either<DataFailure, Unit>> create(ForumPost forumPost, String forumId);

  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);

  Future<Either<DataFailure, Unit>> createPoll(Poll poll, String forumId);

  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(String forumId);

  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId);

  Future<Either<DataFailure, Unit>> likeForum(ForumPost forum, String userId);

  Future<Either<DataFailure, Unit>> unlikeForum(String forumId, String userId);

  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId);

  Future<Either<DataFailure, Unit>> createComment(
      Comment comment, ForumPost forum);

  Stream<Either<DataFailure, List<Comment>>> retrieveComments(
      String sortedBy, String forumId);

  Future<Either<DataFailure, Unit>> likeComment(
      ForumPost forum, Comment comment, String userId);

  Future<Either<DataFailure, Unit>> unlikeComment(
      String forumId, String commentId, String userId);

  Future<Either<DataFailure, Unit>> deleteForum(ForumPost forum);

  Future<Either<DataFailure, List<String>>> searchModulesByModuleCode(
      String moduleCode);

  Stream<Either<DataFailure, List<Mod>>> retrieveModules();

  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleForumsInitial(
      String moduleCode, String sortedBy);

  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleForumsInBatches(
      String moduleCode, String sortedBy, String lastTimestamp, int lastLikes);

  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleFeedInitial();

  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleFeedInBatches(
      String lastTimestamp);

  Future<Either<DataFailure, List<ForumPost>>> retrieveFriendFeedInitial(
      String userId);

  Future<Either<DataFailure, List<ForumPost>>> retrieveFriendFeedInBatches(
      String userId, String lastTimestamp);

  Future<Either<DataFailure, List<ForumPost>>> searchForumByTitle(
      String queryStr);

  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);
}
