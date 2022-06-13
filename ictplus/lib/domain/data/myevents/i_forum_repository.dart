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

  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);

  Future<Either<DataFailure, Unit>> createPoll(Poll poll, String forumId);

  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(String forumId);

  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId);

  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId);

/*
  Stream<Either<DataFailure, List<Mod>>> retrieveModules();

  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleFeedInitial();
  */
}
