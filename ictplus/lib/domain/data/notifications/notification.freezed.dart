// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {required String senderId,
      required bool isRead,
      required String notificationType,
      required String timestamp,
      required String postId,
      required String title,
      required String details,
      required bool pollAdded}) {
    return _Notification(
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
}

/// @nodoc
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  String get senderId => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get notificationType =>
      throw _privateConstructorUsedError; //newFollower, forumLike, commentLike, newComment
  String get timestamp => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError; //forumId only
  String get title => throw _privateConstructorUsedError;
  String get details =>
      throw _privateConstructorUsedError; //contains comment for preview
  bool get pollAdded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {String senderId,
      bool isRead,
      String notificationType,
      String timestamp,
      String postId,
      String title,
      String details,
      bool pollAdded});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? senderId = freezed,
    Object? isRead = freezed,
    Object? notificationType = freezed,
    Object? timestamp = freezed,
    Object? postId = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? pollAdded = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      pollAdded: pollAdded == freezed
          ? _value.pollAdded
          : pollAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String senderId,
      bool isRead,
      String notificationType,
      String timestamp,
      String postId,
      String title,
      String details,
      bool pollAdded});
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object? senderId = freezed,
    Object? isRead = freezed,
    Object? notificationType = freezed,
    Object? timestamp = freezed,
    Object? postId = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? pollAdded = freezed,
  }) {
    return _then(_Notification(
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      pollAdded: pollAdded == freezed
          ? _value.pollAdded
          : pollAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Notification extends _Notification {
  const _$_Notification(
      {required this.senderId,
      required this.isRead,
      required this.notificationType,
      required this.timestamp,
      required this.postId,
      required this.title,
      required this.details,
      required this.pollAdded})
      : super._();

  @override
  final String senderId;
  @override
  final bool isRead;
  @override
  final String notificationType;
  @override //newFollower, forumLike, commentLike, newComment
  final String timestamp;
  @override
  final String postId;
  @override //forumId only
  final String title;
  @override
  final String details;
  @override //contains comment for preview
  final bool pollAdded;

  @override
  String toString() {
    return 'Notification(senderId: $senderId, isRead: $isRead, notificationType: $notificationType, timestamp: $timestamp, postId: $postId, title: $title, details: $details, pollAdded: $pollAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.notificationType, notificationType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationType, notificationType)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.pollAdded, pollAdded) ||
                const DeepCollectionEquality()
                    .equals(other.pollAdded, pollAdded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(notificationType) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(pollAdded);

  @JsonKey(ignore: true)
  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);
}

abstract class _Notification extends Notification {
  const factory _Notification(
      {required String senderId,
      required bool isRead,
      required String notificationType,
      required String timestamp,
      required String postId,
      required String title,
      required String details,
      required bool pollAdded}) = _$_Notification;
  const _Notification._() : super._();

  @override
  String get senderId => throw _privateConstructorUsedError;
  @override
  bool get isRead => throw _privateConstructorUsedError;
  @override
  String get notificationType => throw _privateConstructorUsedError;
  @override //newFollower, forumLike, commentLike, newComment
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get postId => throw _privateConstructorUsedError;
  @override //forumId only
  String get title => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override //contains comment for preview
  bool get pollAdded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationCopyWith<_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
