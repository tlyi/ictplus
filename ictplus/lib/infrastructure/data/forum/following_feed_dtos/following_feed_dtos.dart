import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/forum/following_feed/following_feed.dart';

part 'following_feed_dtos.freezed.dart';
part 'following_feed_dtos.g.dart';

@freezed
abstract class FollowingFeedDto implements _$FollowingFeedDto {
  const FollowingFeedDto._();

  const factory FollowingFeedDto({
    required String forumId,
    required String posterUserId,
    required String timestamp,
  }) = _FollowingFeedDto;

  factory FollowingFeedDto.fromDomain(FollowingFeed followingFeed) {
    return FollowingFeedDto(
      forumId: followingFeed.forumId,
      posterUserId: followingFeed.posterUserId,
      timestamp: followingFeed.timestamp,
    );
  }

  FollowingFeed toDomain() {
    return FollowingFeed(
      forumId: forumId,
      posterUserId: posterUserId,
      timestamp: timestamp,
    );
  }

  factory FollowingFeedDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingFeedDtoFromJson(json);

  factory FollowingFeedDto.fromFirestore(DocumentSnapshot doc) {
    return FollowingFeedDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
