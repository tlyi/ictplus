import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/keyword_generator.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'location_chat_dtos.freezed.dart';
part 'location_chat_dtos.g.dart';

@freezed
abstract class LocationChatDto implements _$LocationChatDto {
  const LocationChatDto._();

  const factory LocationChatDto({
    required String chatId,
    required String creatorUserId,
    required String lastMessage,
    required String lastSenderId,
    required String chatTitle,
    required String timestamp,
    required double longitude,
    required double latitude,
    required List<String> keywords,
  }) = _LocationChatDto;

  factory LocationChatDto.fromDomain(LocationChat locationChat) {
    return LocationChatDto(
        chatId: locationChat.chatId,
        creatorUserId: locationChat.creatorUserId,
        lastMessage: locationChat.lastMessage,
        lastSenderId: locationChat.lastSenderId,
        chatTitle: locationChat.chatTitle.getOrCrash(),
        timestamp: locationChat.timestamp,
        longitude: locationChat.longitude,
        latitude: locationChat.latitude,
        keywords: generateKeywords(
            locationChat.chatTitle.getOrCrash().toLowerCase()));
  }

  LocationChat toDomain() {
    return LocationChat(
        chatId: chatId,
        creatorUserId: creatorUserId,
        lastMessage: lastMessage,
        lastSenderId: lastSenderId,
        chatTitle: Title(chatTitle),
        timestamp: timestamp,
        longitude: longitude,
        latitude: latitude,
        distance: 0);
  }

  factory LocationChatDto.fromJson(Map<String, dynamic> json) =>
      _$LocationChatDtoFromJson(json);

  factory LocationChatDto.fromFirestore(DocumentSnapshot doc) {
    return LocationChatDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
