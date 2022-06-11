// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForumPostDto _$_$_ForumPostDtoFromJson(Map<String, dynamic> json) {
  return _$_ForumPostDto(
    forumId: json['forumId'] as String,
    title: json['title'] as String,
    tag: json['tag'] as String,
    body: json['body'] as String,
    likes: json['likes'] as int,
    likedUserIds: (json['likedUserIds'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    posterUserId: json['posterUserId'] as String,
    isAnon: json['isAnon'] as bool,
    photoUrl: json['photoUrl'] as String,
    photoAdded: json['photoAdded'] as bool,
    pollAdded: json['pollAdded'] as bool,
    timestamp: json['timestamp'] as String,
    keywords:
        (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ForumPostDtoToJson(_$_ForumPostDto instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
      'title': instance.title,
      'tag': instance.tag,
      'body': instance.body,
      'likes': instance.likes,
      'likedUserIds': instance.likedUserIds,
      'posterUserId': instance.posterUserId,
      'isAnon': instance.isAnon,
      'photoUrl': instance.photoUrl,
      'photoAdded': instance.photoAdded,
      'pollAdded': instance.pollAdded,
      'timestamp': instance.timestamp,
      'keywords': instance.keywords,
    };
