// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$_$_NotificationDtoFromJson(Map<String, dynamic> json) {
  return _$_NotificationDto(
    senderId: json['senderId'] as String,
    isRead: json['isRead'] as bool,
    timestamp: json['timestamp'] as String,
    title: json['title'] as String,
    details: json['details'] as String,
  );
}

Map<String, dynamic> _$_$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'isRead': instance.isRead,
      'timestamp': instance.timestamp,
      'title': instance.title,
      'details': instance.details,
    };
