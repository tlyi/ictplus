import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat implements _$Chat {
  const Chat._();

  const factory Chat({
    required String lastMessage,
    required String lastSenderId,
    required bool lastMessageRead,
    required String userIdsCombined,
    required List<String> userIds,
    required String timestamp,
  }) = _Chat;

  factory Chat.empty() => const Chat(
        lastMessage: '',
        lastSenderId: '',
        lastMessageRead: false,
        userIdsCombined: '',
        userIds: [],
        timestamp: '',
      );
}
