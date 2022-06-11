// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessageDto _$_$_ChatMessageDtoFromJson(Map<String, dynamic> json) {
  return _$_ChatMessageDto(
    messageBody: json['messageBody'] as String,
    timeSent: json['timeSent'] as String,
    senderId: json['senderId'] as String,
    photoUrl: json['photoUrl'] as String,
    read: json['read'] as bool,
    messageId: json['messageId'] as String,
  );
}

Map<String, dynamic> _$_$_ChatMessageDtoToJson(_$_ChatMessageDto instance) =>
    <String, dynamic>{
      'messageBody': instance.messageBody,
      'timeSent': instance.timeSent,
      'senderId': instance.senderId,
      'photoUrl': instance.photoUrl,
      'read': instance.read,
      'messageId': instance.messageId,
    };
