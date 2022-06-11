// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_chat_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationChatDto _$_$_LocationChatDtoFromJson(Map<String, dynamic> json) {
  return _$_LocationChatDto(
    chatId: json['chatId'] as String,
    creatorUserId: json['creatorUserId'] as String,
    lastMessage: json['lastMessage'] as String,
    lastSenderId: json['lastSenderId'] as String,
    chatTitle: json['chatTitle'] as String,
    timestamp: json['timestamp'] as String,
    longitude: (json['longitude'] as num).toDouble(),
    latitude: (json['latitude'] as num).toDouble(),
    keywords:
        (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_LocationChatDtoToJson(_$_LocationChatDto instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'creatorUserId': instance.creatorUserId,
      'lastMessage': instance.lastMessage,
      'lastSenderId': instance.lastSenderId,
      'chatTitle': instance.chatTitle,
      'timestamp': instance.timestamp,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'keywords': instance.keywords,
    };
