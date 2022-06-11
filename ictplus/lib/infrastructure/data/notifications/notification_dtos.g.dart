// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$_$_NotificationDtoFromJson(Map<String, dynamic> json) {
  return _$_NotificationDto(
    senderId: json['senderId'] as String,
    isRead: json['isRead'] as bool,
    notificationType: json['notificationType'] as String,
    timestamp: json['timestamp'] as String,
    postId: json['postId'] as String,
    title: json['title'] as String,
    details: json['details'] as String,
    pollAdded: json['pollAdded'] as bool,
  );
}

Map<String, dynamic> _$_$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'isRead': instance.isRead,
      'notificationType': instance.notificationType,
      'timestamp': instance.timestamp,
      'postId': instance.postId,
      'title': instance.title,
      'details': instance.details,
      'pollAdded': instance.pollAdded,
    };
