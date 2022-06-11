import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'following_feed.freezed.dart';

@freezed
abstract class FollowingFeed implements _$FollowingFeed {
  const FollowingFeed._();

  const factory FollowingFeed({
    required String forumId,
    required String posterUserId,
    required String timestamp,
  }) = _FollowingFeed;

  factory FollowingFeed.empty() => FollowingFeed(
        forumId: '',
        posterUserId: '',
        timestamp: '',
      );
}
