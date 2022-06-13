// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    photoUrl: json['photoUrl'] as String,
    rank: json['rank'] as String,
    fullName: json['fullName'] as String,
    uuid: json['uuid'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'rank': instance.rank,
      'fullName': instance.fullName,
      'uuid': instance.uuid,
    };
