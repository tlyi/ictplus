import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/chat.dart';

part 'chat_dtos.freezed.dart';
part 'chat_dtos.g.dart';

@freezed
abstract class ChatDto implements _$ChatDto {
  const ChatDto._();

  const factory ChatDto({
    required String lastMessage,
    required String lastSenderId,
    required bool lastMessageRead,
    required String userIdsCombined,
    required List<String> userIds,
    required String timestamp,
  }) = _ChatDto;

  factory ChatDto.fromDomain(Chat chat) {
    return ChatDto(
      lastMessage: chat.lastMessage,
      lastSenderId: chat.lastSenderId,
      lastMessageRead: chat.lastMessageRead,
      userIdsCombined: chat.userIdsCombined,
      userIds: chat.userIds,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
    );
  }

  Chat toDomain() {
    return Chat(
      lastMessage: lastMessage,
      lastSenderId: lastSenderId,
      lastMessageRead: lastMessageRead,
      userIdsCombined: userIdsCombined,
      userIds: userIds,
      timestamp: timestamp,
    );
  }

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);

  factory ChatDto.fromFirestore(DocumentSnapshot doc) {
    return ChatDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
