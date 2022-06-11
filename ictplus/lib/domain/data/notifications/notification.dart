import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
abstract class Notification implements _$Notification {
  const Notification._();

  const factory Notification({
    required String senderId,
    required bool isRead,
    required String
        notificationType, //newFollower, forumLike, commentLike, newComment
    required String timestamp,
    required String postId, //forumId only
    required String title,
    required String details, //contains comment for preview
    required bool pollAdded, //for routing to forum post from notif
  }) = _Notification;

  factory Notification.empty() => const Notification(
      senderId: '',
      isRead: false,
      notificationType: '',
      timestamp: '',
      postId: '',
      title: '',
      details: '',
      pollAdded: false);
}
