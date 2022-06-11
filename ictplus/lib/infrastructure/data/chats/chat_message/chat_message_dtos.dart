import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/chats/value_objects.dart';

part 'chat_message_dtos.freezed.dart';
part 'chat_message_dtos.g.dart';

@freezed
abstract class ChatMessageDto implements _$ChatMessageDto {
  const ChatMessageDto._();

  const factory ChatMessageDto({
    required String messageBody,
    required String timeSent,
    required String senderId,
    required String photoUrl,
    required bool read,
    required String messageId,
  }) = _ChatMessageDto;

  factory ChatMessageDto.fromDomain(ChatMessage chatMessage) {
    return ChatMessageDto(
      messageBody: chatMessage.messageBody.getOrCrash(),
      timeSent: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: chatMessage.senderId,
      photoUrl: chatMessage.photoUrl,
      read: chatMessage.read,
      messageId: chatMessage.messageId,
    );
  }

  ChatMessage toDomain() {
    return ChatMessage(
      messageBody: MessageBody(messageBody),
      timeSent: timeSent,
      senderId: senderId,
      photoUrl: photoUrl,
      read: read,
      messageId: messageId,
    );
  }

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);

  factory ChatMessageDto.fromFirestore(DocumentSnapshot doc) {
    return ChatMessageDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
