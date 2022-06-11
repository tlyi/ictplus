// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_feed_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FollowingFeedDto _$_$_FollowingFeedDtoFromJson(Map<String, dynamic> json) {
  return _$_FollowingFeedDto(
    forumId: json['forumId'] as String,
    posterUserId: json['posterUserId'] as String,
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_FollowingFeedDtoToJson(
        _$_FollowingFeedDto instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
      'posterUserId': instance.posterUserId,
      'timestamp': instance.timestamp,
    };
