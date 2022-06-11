// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) {
  return _ChatMessageDto.fromJson(json);
}

/// @nodoc
class _$ChatMessageDtoTearOff {
  const _$ChatMessageDtoTearOff();

  _ChatMessageDto call(
      {required String messageBody,
      required String timeSent,
      required String senderId,
      required String photoUrl,
      required bool read,
      required String messageId}) {
    return _ChatMessageDto(
      messageBody: messageBody,
      timeSent: timeSent,
      senderId: senderId,
      photoUrl: photoUrl,
      read: read,
      messageId: messageId,
    );
  }

  ChatMessageDto fromJson(Map<String, Object> json) {
    return ChatMessageDto.fromJson(json);
  }
}

/// @nodoc
const $ChatMessageDto = _$ChatMessageDtoTearOff();

/// @nodoc
mixin _$ChatMessageDto {
  String get messageBody => throw _privateConstructorUsedError;
  String get timeSent => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageDtoCopyWith<ChatMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageDtoCopyWith<$Res> {
  factory $ChatMessageDtoCopyWith(
          ChatMessageDto value, $Res Function(ChatMessageDto) then) =
      _$ChatMessageDtoCopyWithImpl<$Res>;
  $Res call(
      {String messageBody,
      String timeSent,
      String senderId,
      String photoUrl,
      bool read,
      String messageId});
}

/// @nodoc
class _$ChatMessageDtoCopyWithImpl<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  _$ChatMessageDtoCopyWithImpl(this._value, this._then);

  final ChatMessageDto _value;
  // ignore: unused_field
  final $Res Function(ChatMessageDto) _then;

  @override
  $Res call({
    Object? messageBody = freezed,
    Object? timeSent = freezed,
    Object? senderId = freezed,
    Object? photoUrl = freezed,
    Object? read = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_value.copyWith(
      messageBody: messageBody == freezed
          ? _value.messageBody
          : messageBody // ignore: cast_nullable_to_non_nullable
              as String,
      timeSent: timeSent == freezed
          ? _value.timeSent
          : timeSent // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageDtoCopyWith<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  factory _$ChatMessageDtoCopyWith(
          _ChatMessageDto value, $Res Function(_ChatMessageDto) then) =
      __$ChatMessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String messageBody,
      String timeSent,
      String senderId,
      String photoUrl,
      bool read,
      String messageId});
}

/// @nodoc
class __$ChatMessageDtoCopyWithImpl<$Res>
    extends _$ChatMessageDtoCopyWithImpl<$Res>
    implements _$ChatMessageDtoCopyWith<$Res> {
  __$ChatMessageDtoCopyWithImpl(
      _ChatMessageDto _value, $Res Function(_ChatMessageDto) _then)
      : super(_value, (v) => _then(v as _ChatMessageDto));

  @override
  _ChatMessageDto get _value => super._value as _ChatMessageDto;

  @override
  $Res call({
    Object? messageBody = freezed,
    Object? timeSent = freezed,
    Object? senderId = freezed,
    Object? photoUrl = freezed,
    Object? read = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_ChatMessageDto(
      messageBody: messageBody == freezed
          ? _value.messageBody
          : messageBody // ignore: cast_nullable_to_non_nullable
              as String,
      timeSent: timeSent == freezed
          ? _value.timeSent
          : timeSent // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessageDto extends _ChatMessageDto {
  const _$_ChatMessageDto(
      {required this.messageBody,
      required this.timeSent,
      required this.senderId,
      required this.photoUrl,
      required this.read,
      required this.messageId})
      : super._();

  factory _$_ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatMessageDtoFromJson(json);

  @override
  final String messageBody;
  @override
  final String timeSent;
  @override
  final String senderId;
  @override
  final String photoUrl;
  @override
  final bool read;
  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatMessageDto(messageBody: $messageBody, timeSent: $timeSent, senderId: $senderId, photoUrl: $photoUrl, read: $read, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessageDto &&
            (identical(other.messageBody, messageBody) ||
                const DeepCollectionEquality()
                    .equals(other.messageBody, messageBody)) &&
            (identical(other.timeSent, timeSent) ||
                const DeepCollectionEquality()
                    .equals(other.timeSent, timeSent)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)) &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageBody) ^
      const DeepCollectionEquality().hash(timeSent) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(messageId);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith =>
      __$ChatMessageDtoCopyWithImpl<_ChatMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatMessageDtoToJson(this);
  }
}

abstract class _ChatMessageDto extends ChatMessageDto {
  const factory _ChatMessageDto(
      {required String messageBody,
      required String timeSent,
      required String senderId,
      required String photoUrl,
      required bool read,
      required String messageId}) = _$_ChatMessageDto;
  const _ChatMessageDto._() : super._();

  factory _ChatMessageDto.fromJson(Map<String, dynamic> json) =
      _$_ChatMessageDto.fromJson;

  @override
  String get messageBody => throw _privateConstructorUsedError;
  @override
  String get timeSent => throw _privateConstructorUsedError;
  @override
  String get senderId => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  String get messageId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
