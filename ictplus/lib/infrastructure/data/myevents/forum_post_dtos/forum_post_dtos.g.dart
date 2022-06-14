// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForumPostDto _$_$_ForumPostDtoFromJson(Map<String, dynamic> json) {
  return _$_ForumPostDto(
    title: json['title'] as String,
    eventId: json['eventId'] as String,
    end_date: json['end_date'] as String,
    start_date: json['start_date'] as String,
    report_time: json['report_time'] as String,
    location: json['location'] as String,
    pack1: (json['pack1'] as List<dynamic>).map((e) => e as String).toList(),
    pack2: (json['pack2'] as List<dynamic>).map((e) => e as String).toList(),
    pack3: (json['pack3'] as List<dynamic>).map((e) => e as String).toList(),
    pack4: (json['pack4'] as List<dynamic>).map((e) => e as String).toList(),
    pack5: (json['pack5'] as List<dynamic>).map((e) => e as String).toList(),
    pack6: (json['pack6'] as List<dynamic>).map((e) => e as String).toList(),
    pack7: (json['pack7'] as List<dynamic>).map((e) => e as String).toList(),
    pack8: (json['pack8'] as List<dynamic>).map((e) => e as String).toList(),
    pack9: (json['pack9'] as List<dynamic>).map((e) => e as String).toList(),
    specialPack:
        (json['specialPack'] as List<dynamic>).map((e) => e as String).toList(),
    photoUrl: json['photoUrl'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_ForumPostDtoToJson(_$_ForumPostDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'eventId': instance.eventId,
      'end_date': instance.end_date,
      'start_date': instance.start_date,
      'report_time': instance.report_time,
      'location': instance.location,
      'pack1': instance.pack1,
      'pack2': instance.pack2,
      'pack3': instance.pack3,
      'pack4': instance.pack4,
      'pack5': instance.pack5,
      'pack6': instance.pack6,
      'pack7': instance.pack7,
      'pack8': instance.pack8,
      'pack9': instance.pack9,
      'specialPack': instance.specialPack,
      'photoUrl': instance.photoUrl,
      'status': instance.status,
    };
