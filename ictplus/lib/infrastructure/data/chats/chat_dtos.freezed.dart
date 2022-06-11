// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) {
  return _ChatDto.fromJson(json);
}

/// @nodoc
class _$ChatDtoTearOff {
  const _$ChatDtoTearOff();

  _ChatDto call(
      {required String lastMessage,
      required String lastSenderId,
      required bool lastMessageRead,
      required String userIdsCombined,
      required List<String> userIds,
      required String timestamp}) {
    return _ChatDto(
      lastMessage: lastMessage,
      lastSenderId: lastSenderId,
      lastMessageRead: lastMessageRead,
      userIdsCombined: userIdsCombined,
      userIds: userIds,
      timestamp: timestamp,
    );
  }

  ChatDto fromJson(Map<String, Object> json) {
    return ChatDto.fromJson(json);
  }
}

/// @nodoc
const $ChatDto = _$ChatDtoTearOff();

/// @nodoc
mixin _$ChatDto {
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  bool get lastMessageRead => throw _privateConstructorUsedError;
  String get userIdsCombined => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDtoCopyWith<ChatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDtoCopyWith<$Res> {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) then) =
      _$ChatDtoCopyWithImpl<$Res>;
  $Res call(
      {String lastMessage,
      String lastSenderId,
      bool lastMessageRead,
      String userIdsCombined,
      List<String> userIds,
      String timestamp});
}

/// @nodoc
class _$ChatDtoCopyWithImpl<$Res> implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._value, this._then);

  final ChatDto _value;
  // ignore: unused_field
  final $Res Function(ChatDto) _then;

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
abstract class _$ChatDtoCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$ChatDtoCopyWith(_ChatDto value, $Res Function(_ChatDto) then) =
      __$ChatDtoCopyWithImpl<$Res>;
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
class __$ChatDtoCopyWithImpl<$Res> extends _$ChatDtoCopyWithImpl<$Res>
    implements _$ChatDtoCopyWith<$Res> {
  __$ChatDtoCopyWithImpl(_ChatDto _value, $Res Function(_ChatDto) _then)
      : super(_value, (v) => _then(v as _ChatDto));

  @override
  _ChatDto get _value => super._value as _ChatDto;

  @override
  $Res call({
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? lastMessageRead = freezed,
    Object? userIdsCombined = freezed,
    Object? userIds = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_ChatDto(
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
@JsonSerializable()
class _$_ChatDto extends _ChatDto {
  const _$_ChatDto(
      {required this.lastMessage,
      required this.lastSenderId,
      required this.lastMessageRead,
      required this.userIdsCombined,
      required this.userIds,
      required this.timestamp})
      : super._();

  factory _$_ChatDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatDtoFromJson(json);

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
    return 'ChatDto(lastMessage: $lastMessage, lastSenderId: $lastSenderId, lastMessageRead: $lastMessageRead, userIdsCombined: $userIdsCombined, userIds: $userIds, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatDto &&
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
  _$ChatDtoCopyWith<_ChatDto> get copyWith =>
      __$ChatDtoCopyWithImpl<_ChatDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatDtoToJson(this);
  }
}

abstract class _ChatDto extends ChatDto {
  const factory _ChatDto(
      {required String lastMessage,
      required String lastSenderId,
      required bool lastMessageRead,
      required String userIdsCombined,
      required List<String> userIds,
      required String timestamp}) = _$_ChatDto;
  const _ChatDto._() : super._();

  factory _ChatDto.fromJson(Map<String, dynamic> json) = _$_ChatDto.fromJson;

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
  _$ChatDtoCopyWith<_ChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}
