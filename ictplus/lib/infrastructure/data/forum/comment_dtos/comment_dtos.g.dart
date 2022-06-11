// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    forumId: json['forumId'] as String,
    commentId: json['commentId'] as String,
    userId: json['userId'] as String,
    commentText: json['commentText'] as String,
    isAnon: json['isAnon'] as bool,
    likes: json['likes'] as int,
    likedUserIds: (json['likedUserIds'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
      'commentId': instance.commentId,
      'userId': instance.userId,
      'commentText': instance.commentText,
      'isAnon': instance.isAnon,
      'likes': instance.likes,
      'likedUserIds': instance.likedUserIds,
      'timestamp': instance.timestamp,
    };
