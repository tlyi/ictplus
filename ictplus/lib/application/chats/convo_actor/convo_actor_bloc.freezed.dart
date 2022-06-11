// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'convo_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConvoActorEventTearOff {
  const _$ConvoActorEventTearOff();

  _ConvoOpened convoOpened(String otherId) {
    return _ConvoOpened(
      otherId,
    );
  }

  _MessageChanged messageChanged(String message) {
    return _MessageChanged(
      message,
    );
  }

  _PhotoChanged photoSent(File photo) {
    return _PhotoChanged(
      photo,
    );
  }

  _MessageSent messageSent() {
    return const _MessageSent();
  }

  _MessageRead messageRead(String messageId) {
    return _MessageRead(
      messageId,
    );
  }

  _LastMessageRead lastMessageRead() {
    return const _LastMessageRead();
  }
}

/// @nodoc
const $ConvoActorEvent = _$ConvoActorEventTearOff();

/// @nodoc
mixin _$ConvoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvoActorEventCopyWith<$Res> {
  factory $ConvoActorEventCopyWith(
          ConvoActorEvent value, $Res Function(ConvoActorEvent) then) =
      _$ConvoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConvoActorEventCopyWithImpl<$Res>
    implements $ConvoActorEventCopyWith<$Res> {
  _$ConvoActorEventCopyWithImpl(this._value, this._then);

  final ConvoActorEvent _value;
  // ignore: unused_field
  final $Res Function(ConvoActorEvent) _then;
}

/// @nodoc
abstract class _$ConvoOpenedCopyWith<$Res> {
  factory _$ConvoOpenedCopyWith(
          _ConvoOpened value, $Res Function(_ConvoOpened) then) =
      __$ConvoOpenedCopyWithImpl<$Res>;
  $Res call({String otherId});
}

/// @nodoc
class __$ConvoOpenedCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$ConvoOpenedCopyWith<$Res> {
  __$ConvoOpenedCopyWithImpl(
      _ConvoOpened _value, $Res Function(_ConvoOpened) _then)
      : super(_value, (v) => _then(v as _ConvoOpened));

  @override
  _ConvoOpened get _value => super._value as _ConvoOpened;

  @override
  $Res call({
    Object? otherId = freezed,
  }) {
    return _then(_ConvoOpened(
      otherId == freezed
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvoOpened implements _ConvoOpened {
  const _$_ConvoOpened(this.otherId);

  @override
  final String otherId;

  @override
  String toString() {
    return 'ConvoActorEvent.convoOpened(otherId: $otherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConvoOpened &&
            (identical(other.otherId, otherId) ||
                const DeepCollectionEquality().equals(other.otherId, otherId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherId);

  @JsonKey(ignore: true)
  @override
  _$ConvoOpenedCopyWith<_ConvoOpened> get copyWith =>
      __$ConvoOpenedCopyWithImpl<_ConvoOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return convoOpened(otherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (convoOpened != null) {
      return convoOpened(otherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return convoOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (convoOpened != null) {
      return convoOpened(this);
    }
    return orElse();
  }
}

abstract class _ConvoOpened implements ConvoActorEvent {
  const factory _ConvoOpened(String otherId) = _$_ConvoOpened;

  String get otherId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConvoOpenedCopyWith<_ConvoOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageChangedCopyWith<$Res> {
  factory _$MessageChangedCopyWith(
          _MessageChanged value, $Res Function(_MessageChanged) then) =
      __$MessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$MessageChangedCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$MessageChangedCopyWith<$Res> {
  __$MessageChangedCopyWithImpl(
      _MessageChanged _value, $Res Function(_MessageChanged) _then)
      : super(_value, (v) => _then(v as _MessageChanged));

  @override
  _MessageChanged get _value => super._value as _MessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_MessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageChanged implements _MessageChanged {
  const _$_MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ConvoActorEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageChanged &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      __$MessageChangedCopyWithImpl<_MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageChanged implements ConvoActorEvent {
  const factory _MessageChanged(String message) = _$_MessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhotoChangedCopyWith<$Res> {
  factory _$PhotoChangedCopyWith(
          _PhotoChanged value, $Res Function(_PhotoChanged) then) =
      __$PhotoChangedCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$PhotoChangedCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$PhotoChangedCopyWith<$Res> {
  __$PhotoChangedCopyWithImpl(
      _PhotoChanged _value, $Res Function(_PhotoChanged) _then)
      : super(_value, (v) => _then(v as _PhotoChanged));

  @override
  _PhotoChanged get _value => super._value as _PhotoChanged;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_PhotoChanged(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PhotoChanged implements _PhotoChanged {
  const _$_PhotoChanged(this.photo);

  @override
  final File photo;

  @override
  String toString() {
    return 'ConvoActorEvent.photoSent(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoChanged &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      __$PhotoChangedCopyWithImpl<_PhotoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return photoSent(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (photoSent != null) {
      return photoSent(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return photoSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (photoSent != null) {
      return photoSent(this);
    }
    return orElse();
  }
}

abstract class _PhotoChanged implements ConvoActorEvent {
  const factory _PhotoChanged(File photo) = _$_PhotoChanged;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageSentCopyWith<$Res> {
  factory _$MessageSentCopyWith(
          _MessageSent value, $Res Function(_MessageSent) then) =
      __$MessageSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$MessageSentCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$MessageSentCopyWith<$Res> {
  __$MessageSentCopyWithImpl(
      _MessageSent _value, $Res Function(_MessageSent) _then)
      : super(_value, (v) => _then(v as _MessageSent));

  @override
  _MessageSent get _value => super._value as _MessageSent;
}

/// @nodoc

class _$_MessageSent implements _MessageSent {
  const _$_MessageSent();

  @override
  String toString() {
    return 'ConvoActorEvent.messageSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MessageSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements ConvoActorEvent {
  const factory _MessageSent() = _$_MessageSent;
}

/// @nodoc
abstract class _$MessageReadCopyWith<$Res> {
  factory _$MessageReadCopyWith(
          _MessageRead value, $Res Function(_MessageRead) then) =
      __$MessageReadCopyWithImpl<$Res>;
  $Res call({String messageId});
}

/// @nodoc
class __$MessageReadCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$MessageReadCopyWith<$Res> {
  __$MessageReadCopyWithImpl(
      _MessageRead _value, $Res Function(_MessageRead) _then)
      : super(_value, (v) => _then(v as _MessageRead));

  @override
  _MessageRead get _value => super._value as _MessageRead;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(_MessageRead(
      messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageRead implements _MessageRead {
  const _$_MessageRead(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ConvoActorEvent.messageRead(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageRead &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageId);

  @JsonKey(ignore: true)
  @override
  _$MessageReadCopyWith<_MessageRead> get copyWith =>
      __$MessageReadCopyWithImpl<_MessageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return messageRead(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class _MessageRead implements ConvoActorEvent {
  const factory _MessageRead(String messageId) = _$_MessageRead;

  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageReadCopyWith<_MessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LastMessageReadCopyWith<$Res> {
  factory _$LastMessageReadCopyWith(
          _LastMessageRead value, $Res Function(_LastMessageRead) then) =
      __$LastMessageReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LastMessageReadCopyWithImpl<$Res>
    extends _$ConvoActorEventCopyWithImpl<$Res>
    implements _$LastMessageReadCopyWith<$Res> {
  __$LastMessageReadCopyWithImpl(
      _LastMessageRead _value, $Res Function(_LastMessageRead) _then)
      : super(_value, (v) => _then(v as _LastMessageRead));

  @override
  _LastMessageRead get _value => super._value as _LastMessageRead;
}

/// @nodoc

class _$_LastMessageRead implements _LastMessageRead {
  const _$_LastMessageRead();

  @override
  String toString() {
    return 'ConvoActorEvent.lastMessageRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LastMessageRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) convoOpened,
    required TResult Function(String message) messageChanged,
    required TResult Function(File photo) photoSent,
    required TResult Function() messageSent,
    required TResult Function(String messageId) messageRead,
    required TResult Function() lastMessageRead,
  }) {
    return lastMessageRead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? convoOpened,
    TResult Function(String message)? messageChanged,
    TResult Function(File photo)? photoSent,
    TResult Function()? messageSent,
    TResult Function(String messageId)? messageRead,
    TResult Function()? lastMessageRead,
    required TResult orElse(),
  }) {
    if (lastMessageRead != null) {
      return lastMessageRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConvoOpened value) convoOpened,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_PhotoChanged value) photoSent,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_LastMessageRead value) lastMessageRead,
  }) {
    return lastMessageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConvoOpened value)? convoOpened,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_PhotoChanged value)? photoSent,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_LastMessageRead value)? lastMessageRead,
    required TResult orElse(),
  }) {
    if (lastMessageRead != null) {
      return lastMessageRead(this);
    }
    return orElse();
  }
}

abstract class _LastMessageRead implements ConvoActorEvent {
  const factory _LastMessageRead() = _$_LastMessageRead;
}

/// @nodoc
class _$ConvoActorStateTearOff {
  const _$ConvoActorStateTearOff();

  _ConvoActorState call(
      {required Either<DataFailure, String> photoUrl,
      required ChatMessage chatMessage,
      required Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
      required String ownId,
      required String otherId,
      required String convoId,
      required String messageId}) {
    return _ConvoActorState(
      photoUrl: photoUrl,
      chatMessage: chatMessage,
      sentFailureOrSuccessOption: sentFailureOrSuccessOption,
      ownId: ownId,
      otherId: otherId,
      convoId: convoId,
      messageId: messageId,
    );
  }
}

/// @nodoc
const $ConvoActorState = _$ConvoActorStateTearOff();

/// @nodoc
mixin _$ConvoActorState {
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  ChatMessage get chatMessage => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get sentFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  String get ownId => throw _privateConstructorUsedError;
  String get otherId => throw _privateConstructorUsedError;
  String get convoId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConvoActorStateCopyWith<ConvoActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvoActorStateCopyWith<$Res> {
  factory $ConvoActorStateCopyWith(
          ConvoActorState value, $Res Function(ConvoActorState) then) =
      _$ConvoActorStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, String> photoUrl,
      ChatMessage chatMessage,
      Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
      String ownId,
      String otherId,
      String convoId,
      String messageId});

  $ChatMessageCopyWith<$Res> get chatMessage;
}

/// @nodoc
class _$ConvoActorStateCopyWithImpl<$Res>
    implements $ConvoActorStateCopyWith<$Res> {
  _$ConvoActorStateCopyWithImpl(this._value, this._then);

  final ConvoActorState _value;
  // ignore: unused_field
  final $Res Function(ConvoActorState) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? chatMessage = freezed,
    Object? sentFailureOrSuccessOption = freezed,
    Object? ownId = freezed,
    Object? otherId = freezed,
    Object? convoId = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      chatMessage: chatMessage == freezed
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      sentFailureOrSuccessOption: sentFailureOrSuccessOption == freezed
          ? _value.sentFailureOrSuccessOption
          : sentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
      otherId: otherId == freezed
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as String,
      convoId: convoId == freezed
          ? _value.convoId
          : convoId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ChatMessageCopyWith<$Res> get chatMessage {
    return $ChatMessageCopyWith<$Res>(_value.chatMessage, (value) {
      return _then(_value.copyWith(chatMessage: value));
    });
  }
}

/// @nodoc
abstract class _$ConvoActorStateCopyWith<$Res>
    implements $ConvoActorStateCopyWith<$Res> {
  factory _$ConvoActorStateCopyWith(
          _ConvoActorState value, $Res Function(_ConvoActorState) then) =
      __$ConvoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, String> photoUrl,
      ChatMessage chatMessage,
      Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
      String ownId,
      String otherId,
      String convoId,
      String messageId});

  @override
  $ChatMessageCopyWith<$Res> get chatMessage;
}

/// @nodoc
class __$ConvoActorStateCopyWithImpl<$Res>
    extends _$ConvoActorStateCopyWithImpl<$Res>
    implements _$ConvoActorStateCopyWith<$Res> {
  __$ConvoActorStateCopyWithImpl(
      _ConvoActorState _value, $Res Function(_ConvoActorState) _then)
      : super(_value, (v) => _then(v as _ConvoActorState));

  @override
  _ConvoActorState get _value => super._value as _ConvoActorState;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? chatMessage = freezed,
    Object? sentFailureOrSuccessOption = freezed,
    Object? ownId = freezed,
    Object? otherId = freezed,
    Object? convoId = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_ConvoActorState(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      chatMessage: chatMessage == freezed
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      sentFailureOrSuccessOption: sentFailureOrSuccessOption == freezed
          ? _value.sentFailureOrSuccessOption
          : sentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
      otherId: otherId == freezed
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as String,
      convoId: convoId == freezed
          ? _value.convoId
          : convoId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvoActorState implements _ConvoActorState {
  const _$_ConvoActorState(
      {required this.photoUrl,
      required this.chatMessage,
      required this.sentFailureOrSuccessOption,
      required this.ownId,
      required this.otherId,
      required this.convoId,
      required this.messageId});

  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final ChatMessage chatMessage;
  @override
  final Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption;
  @override
  final String ownId;
  @override
  final String otherId;
  @override
  final String convoId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'ConvoActorState(photoUrl: $photoUrl, chatMessage: $chatMessage, sentFailureOrSuccessOption: $sentFailureOrSuccessOption, ownId: $ownId, otherId: $otherId, convoId: $convoId, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConvoActorState &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.chatMessage, chatMessage) ||
                const DeepCollectionEquality()
                    .equals(other.chatMessage, chatMessage)) &&
            (identical(other.sentFailureOrSuccessOption,
                    sentFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sentFailureOrSuccessOption,
                    sentFailureOrSuccessOption)) &&
            (identical(other.ownId, ownId) ||
                const DeepCollectionEquality().equals(other.ownId, ownId)) &&
            (identical(other.otherId, otherId) ||
                const DeepCollectionEquality()
                    .equals(other.otherId, otherId)) &&
            (identical(other.convoId, convoId) ||
                const DeepCollectionEquality()
                    .equals(other.convoId, convoId)) &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(chatMessage) ^
      const DeepCollectionEquality().hash(sentFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(ownId) ^
      const DeepCollectionEquality().hash(otherId) ^
      const DeepCollectionEquality().hash(convoId) ^
      const DeepCollectionEquality().hash(messageId);

  @JsonKey(ignore: true)
  @override
  _$ConvoActorStateCopyWith<_ConvoActorState> get copyWith =>
      __$ConvoActorStateCopyWithImpl<_ConvoActorState>(this, _$identity);
}

abstract class _ConvoActorState implements ConvoActorState {
  const factory _ConvoActorState(
      {required Either<DataFailure, String> photoUrl,
      required ChatMessage chatMessage,
      required Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
      required String ownId,
      required String otherId,
      required String convoId,
      required String messageId}) = _$_ConvoActorState;

  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  ChatMessage get chatMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get sentFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  String get ownId => throw _privateConstructorUsedError;
  @override
  String get otherId => throw _privateConstructorUsedError;
  @override
  String get convoId => throw _privateConstructorUsedError;
  @override
  String get messageId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConvoActorStateCopyWith<_ConvoActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
