// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModDto _$_$_ModDtoFromJson(Map<String, dynamic> json) {
  return _$_ModDto(
    moduleCode: json['moduleCode'] as String,
    title: json['title'] as String,
    semesters:
        (json['semesters'] as List<dynamic>).map((e) => e as int).toList(),
    lastPosted: json['lastPosted'] as String,
  );
}

Map<String, dynamic> _$_$_ModDtoToJson(_$_ModDto instance) => <String, dynamic>{
      'moduleCode': instance.moduleCode,
      'title': instance.title,
      'semesters': instance.semesters,
      'lastPosted': instance.lastPosted,
    };
