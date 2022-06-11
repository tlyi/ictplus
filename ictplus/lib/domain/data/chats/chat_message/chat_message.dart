import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/value_objects.dart';

part 'chat_message.freezed.dart';

@freezed
abstract class ChatMessage implements _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required MessageBody messageBody,
    required String timeSent,
    required String senderId,
    required String photoUrl,
    required bool read,
    required String messageId,
  }) = _ChatMessage;

  factory ChatMessage.empty() => ChatMessage(
        messageBody: MessageBody(''),
        timeSent: '',
        senderId: '',
        photoUrl: '',
        read: false,
        messageId: '',
      );
}
