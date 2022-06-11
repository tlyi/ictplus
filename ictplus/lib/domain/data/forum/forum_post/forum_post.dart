import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/forum/poll/poll.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'forum_post.freezed.dart';

@freezed
abstract class ForumPost implements _$ForumPost {
  const ForumPost._();

  const factory ForumPost({
    required String forumId,
    required Title title,
    required String tag,
    required Body body,
    required int likes,
    required List<String> likedUserIds,
    required String posterUserId,
    required bool isAnon,
    required String photoUrl,
    required bool photoAdded,
    required bool pollAdded,
    required String timestamp,
  }) = _ForumPost;

  factory ForumPost.empty() => ForumPost(
        forumId: UniqueId().getOrCrash(),
        title: Title(''),
        tag: '',
        body: Body(''),
        likes: 0,
        likedUserIds: [],
        posterUserId: '',
        isAnon: false,
        photoUrl: '',
        photoAdded: false,
        pollAdded: false,
        timestamp: '',
      );
}
