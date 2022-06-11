// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String lastMessage,
      required String lastSenderId,
      required bool lastMessageRead,
      required String userIdsCombined,
      required List<String> userIds,
      required String timestamp}) {
    return _Chat(
      lastMessage: lastMessage,
      lastSenderId: lastSenderId,
      lastMessageRead: lastMessageRead,
      userIdsCombined: userIdsCombined,
      userIds: userIds,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  bool get lastMessageRead => throw _privateConstructorUsedError;
  String get userIdsCombined => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String lastMessage,
      String lastSenderId,
      bool lastMessageRead,
      String userIdsCombined,
      List<String> userIds,
      String timestamp});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? lastMessageRead = freezed,
    Object? userIdsCombined = freezed,
    Object? userIds = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageRead: lastMessageRead == freezed
          ? _value.lastMessageRead
          : lastMessageRead // ignore: cast_nullable_to_non_nullable
              as bool,
      userIdsCombined: userIdsCombined == freezed
          ? _value.userIdsCombined
          : userIdsCombined // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lastMessage,
      String lastSenderId,
      bool lastMessageRead,
      String userIdsCombined,
      List<String> userIds,
      String timestamp});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? lastMessageRead = freezed,
    Object? userIdsCombined = freezed,
    Object? userIds = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_Chat(
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageRead: lastMessageRead == freezed
          ? _value.lastMessageRead
          : lastMessageRead // ignore: cast_nullable_to_non_nullable
              as bool,
      userIdsCombined: userIdsCombined == freezed
          ? _value.userIdsCombined
          : userIdsCombined // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Chat extends _Chat {
  const _$_Chat(
      {required this.lastMessage,
      required this.lastSenderId,
      required this.lastMessageRead,
      required this.userIdsCombined,
      required this.userIds,
      required this.timestamp})
      : super._();

  @override
  final String lastMessage;
  @override
  final String lastSenderId;
  @override
  final bool lastMessageRead;
  @override
  final String userIdsCombined;
  @override
  final List<String> userIds;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'Chat(lastMessage: $lastMessage, lastSenderId: $lastSenderId, lastMessageRead: $lastMessageRead, userIdsCombined: $userIdsCombined, userIds: $userIds, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chat &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.lastSenderId, lastSenderId) ||
                const DeepCollectionEquality()
                    .equals(other.lastSenderId, lastSenderId)) &&
            (identical(other.lastMessageRead, lastMessageRead) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessageRead, lastMessageRead)) &&
            (identical(other.userIdsCombined, userIdsCombined) ||
                const DeepCollectionEquality()
                    .equals(other.userIdsCombined, userIdsCombined)) &&
            (identical(other.userIds, userIds) ||
                const DeepCollectionEquality()
                    .equals(other.userIds, userIds)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(lastSenderId) ^
      const DeepCollectionEquality().hash(lastMessageRead) ^
      const DeepCollectionEquality().hash(userIdsCombined) ^
      const DeepCollectionEquality().hash(userIds) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);
}

abstract class _Chat extends Chat {
  const factory _Chat(
      {required String lastMessage,
      required String lastSenderId,
      required bool lastMessageRead,
      required String userIdsCombined,
      required List<String> userIds,
      required String timestamp}) = _$_Chat;
  const _Chat._() : super._();

  @override
  String get lastMessage => throw _privateConstructorUsedError;
  @override
  String get lastSenderId => throw _privateConstructorUsedError;
  @override
  bool get lastMessageRead => throw _privateConstructorUsedError;
  @override
  String get userIdsCombined => throw _privateConstructorUsedError;
  @override
  List<String> get userIds => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
