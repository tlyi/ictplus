import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';

part 'notification_dtos.freezed.dart';
part 'notification_dtos.g.dart';

@freezed
abstract class NotificationDto implements _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto({
    required String senderId,
    required bool isRead,
    required String timestamp,
    required String title,
    required String details,
  }) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) {
    return NotificationDto(
      senderId: notification.senderId,
      isRead: notification.isRead,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      title: notification.title,
      details: notification.details,
    );
  }

  Notification toDomain() {
    return Notification(
      senderId: senderId,
      isRead: isRead,
      timestamp: timestamp,
      title: title,
      details: details,
    );
  }

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  factory NotificationDto.fromFirestore(DocumentSnapshot doc) {
    return NotificationDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
