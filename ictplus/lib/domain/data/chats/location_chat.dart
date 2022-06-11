import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'location_chat.freezed.dart';

@freezed
abstract class LocationChat implements _$LocationChat {
  const LocationChat._();

  // ignore: sort_unnamed_constructors_first
  const factory LocationChat(
      {required String chatId,
      required String creatorUserId,
      required String lastMessage,
      required String lastSenderId,
      required Title chatTitle,
      required String timestamp,
      required double longitude,
      required double latitude,
      required double distance}) = _LocationChat;

  factory LocationChat.empty() => LocationChat(
      chatId: UniqueId().getOrCrash(),
      creatorUserId: '',
      lastMessage: '',
      lastSenderId: '',
      chatTitle: Title(''),
      timestamp: '',
      longitude: 0,
      latitude: 0,
      distance: 0);
}
