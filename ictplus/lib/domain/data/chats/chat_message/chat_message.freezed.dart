// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(
      {required MessageBody messageBody,
      required String timeSent,
      required String senderId,
      required String photoUrl,
      required bool read,
      required String messageId}) {
    return _ChatMessage(
      messageBody: messageBody,
      timeSent: timeSent,
      senderId: senderId,
      photoUrl: photoUrl,
      read: read,
      messageId: messageId,
    );
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  MessageBody get messageBody => throw _privateConstructorUsedError;
  String get timeSent => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {MessageBody messageBody,
      String timeSent,
      String senderId,
      String photoUrl,
      bool read,
      String messageId});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

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
              as MessageBody,
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
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageBody messageBody,
      String timeSent,
      String senderId,
      String photoUrl,
      bool read,
      String messageId});
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? messageBody = freezed,
    Object? timeSent = freezed,
    Object? senderId = freezed,
    Object? photoUrl = freezed,
    Object? read = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_ChatMessage(
      messageBody: messageBody == freezed
          ? _value.messageBody
          : messageBody // ignore: cast_nullable_to_non_nullable
              as MessageBody,
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

class _$_ChatMessage extends _ChatMessage {
  const _$_ChatMessage(
      {required this.messageBody,
      required this.timeSent,
      required this.senderId,
      required this.photoUrl,
      required this.read,
      required this.messageId})
      : super._();

  @override
  final MessageBody messageBody;
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
    return 'ChatMessage(messageBody: $messageBody, timeSent: $timeSent, senderId: $senderId, photoUrl: $photoUrl, read: $read, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessage &&
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
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      {required MessageBody messageBody,
      required String timeSent,
      required String senderId,
      required String photoUrl,
      required bool read,
      required String messageId}) = _$_ChatMessage;
  const _ChatMessage._() : super._();

  @override
  MessageBody get messageBody => throw _privateConstructorUsedError;
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
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
