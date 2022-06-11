import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';

part 'notification_dtos.freezed.dart';
part 'notification_dtos.g.dart';

@freezed
abstract class NotificationDto implements _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto(
      {required String senderId,
      required bool isRead,
      required String notificationType,
      required String timestamp,
      required String postId,
      required String title,
      required String details,
      required bool pollAdded}) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) {
    return NotificationDto(
        senderId: notification.senderId,
        isRead: notification.isRead,
        notificationType: notification.notificationType,
        timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        postId: notification.postId,
        title: notification.title,
        details: notification.details,
        pollAdded: notification.pollAdded);
  }

  Notification toDomain() {
    return Notification(
      senderId: senderId,
      isRead: isRead,
      notificationType: notificationType,
      timestamp: timestamp,
      postId: postId,
      title: title,
      details: details,
      pollAdded: pollAdded,
    );
  }

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  factory NotificationDto.fromFirestore(DocumentSnapshot doc) {
    return NotificationDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
