// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDto _$_$_ChatDtoFromJson(Map<String, dynamic> json) {
  return _$_ChatDto(
    lastMessage: json['lastMessage'] as String,
    lastSenderId: json['lastSenderId'] as String,
    lastMessageRead: json['lastMessageRead'] as bool,
    userIdsCombined: json['userIdsCombined'] as String,
    userIds:
        (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_ChatDtoToJson(_$_ChatDto instance) =>
    <String, dynamic>{
      'lastMessage': instance.lastMessage,
      'lastSenderId': instance.lastSenderId,
      'lastMessageRead': instance.lastMessageRead,
      'userIdsCombined': instance.userIdsCombined,
      'userIds': instance.userIds,
      'timestamp': instance.timestamp,
    };
