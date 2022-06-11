// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    photoUrl: json['photoUrl'] as String,
    username: json['username'] as String,
    course: json['course'] as String,
    bio: json['bio'] as String,
    modules:
        (json['modules'] as List<dynamic>).map((e) => e as String).toList(),
    uuid: json['uuid'] as String,
    forumsPosted: (json['forumsPosted'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    following:
        (json['following'] as List<dynamic>).map((e) => e as String).toList(),
    followedBy:
        (json['followedBy'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'course': instance.course,
      'bio': instance.bio,
      'modules': instance.modules,
      'uuid': instance.uuid,
      'forumsPosted': instance.forumsPosted,
      'following': instance.following,
      'followedBy': instance.followedBy,
    };
