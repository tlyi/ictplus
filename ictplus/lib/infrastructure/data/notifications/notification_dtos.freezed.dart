// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
class _$NotificationDtoTearOff {
  const _$NotificationDtoTearOff();

  _NotificationDto call(
      {required String senderId,
      required bool isRead,
      required String notificationType,
      required String timestamp,
      required String postId,
      required String title,
      required String details,
      required bool pollAdded}) {
    return _NotificationDto(
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

  NotificationDto fromJson(Map<String, Object> json) {
    return NotificationDto.fromJson(json);
  }
}

/// @nodoc
const $NotificationDto = _$NotificationDtoTearOff();

/// @nodoc
mixin _$NotificationDto {
  String get senderId => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get notificationType => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  bool get pollAdded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res>;
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
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  final NotificationDto _value;
  // ignore: unused_field
  final $Res Function(NotificationDto) _then;

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
abstract class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) then) =
      __$NotificationDtoCopyWithImpl<$Res>;
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
class __$NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(
      _NotificationDto _value, $Res Function(_NotificationDto) _then)
      : super(_value, (v) => _then(v as _NotificationDto));

  @override
  _NotificationDto get _value => super._value as _NotificationDto;

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
    return _then(_NotificationDto(
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
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {required this.senderId,
      required this.isRead,
      required this.notificationType,
      required this.timestamp,
      required this.postId,
      required this.title,
      required this.details,
      required this.pollAdded})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationDtoFromJson(json);

  @override
  final String senderId;
  @override
  final bool isRead;
  @override
  final String notificationType;
  @override
  final String timestamp;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String details;
  @override
  final bool pollAdded;

  @override
  String toString() {
    return 'NotificationDto(senderId: $senderId, isRead: $isRead, notificationType: $notificationType, timestamp: $timestamp, postId: $postId, title: $title, details: $details, pollAdded: $pollAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDto &&
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
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {required String senderId,
      required bool isRead,
      required String notificationType,
      required String timestamp,
      required String postId,
      required String title,
      required String details,
      required bool pollAdded}) = _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  String get senderId => throw _privateConstructorUsedError;
  @override
  bool get isRead => throw _privateConstructorUsedError;
  @override
  String get notificationType => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get postId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  bool get pollAdded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
