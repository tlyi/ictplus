// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'convo_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConvoWatcherEventTearOff {
  const _$ConvoWatcherEventTearOff();

  _RetrieveConvoStarted retrieveConvoStarted(String otherId) {
    return _RetrieveConvoStarted(
      otherId,
    );
  }

  _RetrieveConvoEnded retrieveConvoEnded() {
    return const _RetrieveConvoEnded();
  }

  _ConvoReceived convoReceived(
      Either<DataFailure, List<ChatMessage>> failureOrMessages) {
    return _ConvoReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
const $ConvoWatcherEvent = _$ConvoWatcherEventTearOff();

/// @nodoc
mixin _$ConvoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvoWatcherEventCopyWith<$Res> {
  factory $ConvoWatcherEventCopyWith(
          ConvoWatcherEvent value, $Res Function(ConvoWatcherEvent) then) =
      _$ConvoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConvoWatcherEventCopyWithImpl<$Res>
    implements $ConvoWatcherEventCopyWith<$Res> {
  _$ConvoWatcherEventCopyWithImpl(this._value, this._then);

  final ConvoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ConvoWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveConvoStartedCopyWith<$Res> {
  factory _$RetrieveConvoStartedCopyWith(_RetrieveConvoStarted value,
          $Res Function(_RetrieveConvoStarted) then) =
      __$RetrieveConvoStartedCopyWithImpl<$Res>;
  $Res call({String otherId});
}

/// @nodoc
class __$RetrieveConvoStartedCopyWithImpl<$Res>
    extends _$ConvoWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveConvoStartedCopyWith<$Res> {
  __$RetrieveConvoStartedCopyWithImpl(
      _RetrieveConvoStarted _value, $Res Function(_RetrieveConvoStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveConvoStarted));

  @override
  _RetrieveConvoStarted get _value => super._value as _RetrieveConvoStarted;

  @override
  $Res call({
    Object? otherId = freezed,
  }) {
    return _then(_RetrieveConvoStarted(
      otherId == freezed
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveConvoStarted implements _RetrieveConvoStarted {
  const _$_RetrieveConvoStarted(this.otherId);

  @override
  final String otherId;

  @override
  String toString() {
    return 'ConvoWatcherEvent.retrieveConvoStarted(otherId: $otherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveConvoStarted &&
            (identical(other.otherId, otherId) ||
                const DeepCollectionEquality().equals(other.otherId, otherId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherId);

  @JsonKey(ignore: true)
  @override
  _$RetrieveConvoStartedCopyWith<_RetrieveConvoStarted> get copyWith =>
      __$RetrieveConvoStartedCopyWithImpl<_RetrieveConvoStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
  }) {
    return retrieveConvoStarted(otherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    required TResult orElse(),
  }) {
    if (retrieveConvoStarted != null) {
      return retrieveConvoStarted(otherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
  }) {
    return retrieveConvoStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    required TResult orElse(),
  }) {
    if (retrieveConvoStarted != null) {
      return retrieveConvoStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveConvoStarted implements ConvoWatcherEvent {
  const factory _RetrieveConvoStarted(String otherId) = _$_RetrieveConvoStarted;

  String get otherId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveConvoStartedCopyWith<_RetrieveConvoStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveConvoEndedCopyWith<$Res> {
  factory _$RetrieveConvoEndedCopyWith(
          _RetrieveConvoEnded value, $Res Function(_RetrieveConvoEnded) then) =
      __$RetrieveConvoEndedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveConvoEndedCopyWithImpl<$Res>
    extends _$ConvoWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveConvoEndedCopyWith<$Res> {
  __$RetrieveConvoEndedCopyWithImpl(
      _RetrieveConvoEnded _value, $Res Function(_RetrieveConvoEnded) _then)
      : super(_value, (v) => _then(v as _RetrieveConvoEnded));

  @override
  _RetrieveConvoEnded get _value => super._value as _RetrieveConvoEnded;
}

/// @nodoc

class _$_RetrieveConvoEnded implements _RetrieveConvoEnded {
  const _$_RetrieveConvoEnded();

  @override
  String toString() {
    return 'ConvoWatcherEvent.retrieveConvoEnded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveConvoEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
  }) {
    return retrieveConvoEnded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    required TResult orElse(),
  }) {
    if (retrieveConvoEnded != null) {
      return retrieveConvoEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
  }) {
    return retrieveConvoEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    required TResult orElse(),
  }) {
    if (retrieveConvoEnded != null) {
      return retrieveConvoEnded(this);
    }
    return orElse();
  }
}

abstract class _RetrieveConvoEnded implements ConvoWatcherEvent {
  const factory _RetrieveConvoEnded() = _$_RetrieveConvoEnded;
}

/// @nodoc
abstract class _$ConvoReceivedCopyWith<$Res> {
  factory _$ConvoReceivedCopyWith(
          _ConvoReceived value, $Res Function(_ConvoReceived) then) =
      __$ConvoReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<ChatMessage>> failureOrMessages});
}

/// @nodoc
class __$ConvoReceivedCopyWithImpl<$Res>
    extends _$ConvoWatcherEventCopyWithImpl<$Res>
    implements _$ConvoReceivedCopyWith<$Res> {
  __$ConvoReceivedCopyWithImpl(
      _ConvoReceived _value, $Res Function(_ConvoReceived) _then)
      : super(_value, (v) => _then(v as _ConvoReceived));

  @override
  _ConvoReceived get _value => super._value as _ConvoReceived;

  @override
  $Res call({
    Object? failureOrMessages = freezed,
  }) {
    return _then(_ConvoReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$_ConvoReceived implements _ConvoReceived {
  const _$_ConvoReceived(this.failureOrMessages);

  @override
  final Either<DataFailure, List<ChatMessage>> failureOrMessages;

  @override
  String toString() {
    return 'ConvoWatcherEvent.convoReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConvoReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @JsonKey(ignore: true)
  @override
  _$ConvoReceivedCopyWith<_ConvoReceived> get copyWith =>
      __$ConvoReceivedCopyWithImpl<_ConvoReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
  }) {
    return convoReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    required TResult orElse(),
  }) {
    if (convoReceived != null) {
      return convoReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
  }) {
    return convoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    required TResult orElse(),
  }) {
    if (convoReceived != null) {
      return convoReceived(this);
    }
    return orElse();
  }
}

abstract class _ConvoReceived implements ConvoWatcherEvent {
  const factory _ConvoReceived(
          Either<DataFailure, List<ChatMessage>> failureOrMessages) =
      _$_ConvoReceived;

  Either<DataFailure, List<ChatMessage>> get failureOrMessages =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConvoReceivedCopyWith<_ConvoReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConvoWatcherStateTearOff {
  const _$ConvoWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadMessagesInProgress loadMessagesInProgress() {
    return const _LoadMessagesInProgress();
  }

  _LoadMessagesSuccess loadMessagesSuccess(List<ChatMessage> messages) {
    return _LoadMessagesSuccess(
      messages,
    );
  }

  _LoadMessagesFailure loadMessagesFailure(DataFailure dataFailure) {
    return _LoadMessagesFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ConvoWatcherState = _$ConvoWatcherStateTearOff();

/// @nodoc
mixin _$ConvoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(List<ChatMessage> messages) loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages)? loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMessagesInProgress value)
        loadMessagesInProgress,
    required TResult Function(_LoadMessagesSuccess value) loadMessagesSuccess,
    required TResult Function(_LoadMessagesFailure value) loadMessagesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMessagesInProgress value)? loadMessagesInProgress,
    TResult Function(_LoadMessagesSuccess value)? loadMessagesSuccess,
    TResult Function(_LoadMessagesFailure value)? loadMessagesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvoWatcherStateCopyWith<$Res> {
  factory $ConvoWatcherStateCopyWith(
          ConvoWatcherState value, $Res Function(ConvoWatcherState) then) =
      _$ConvoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConvoWatcherStateCopyWithImpl<$Res>
    implements $ConvoWatcherStateCopyWith<$Res> {
  _$ConvoWatcherStateCopyWithImpl(this._value, this._then);

  final ConvoWatcherState _value;
  // ignore: unused_field
  final $Res Function(ConvoWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ConvoWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ConvoWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(List<ChatMessage> messages) loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages)? loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMessagesInProgress value)
        loadMessagesInProgress,
    required TResult Function(_LoadMessagesSuccess value) loadMessagesSuccess,
    required TResult Function(_LoadMessagesFailure value) loadMessagesFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMessagesInProgress value)? loadMessagesInProgress,
    TResult Function(_LoadMessagesSuccess value)? loadMessagesSuccess,
    TResult Function(_LoadMessagesFailure value)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConvoWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadMessagesInProgressCopyWith<$Res> {
  factory _$LoadMessagesInProgressCopyWith(_LoadMessagesInProgress value,
          $Res Function(_LoadMessagesInProgress) then) =
      __$LoadMessagesInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMessagesInProgressCopyWithImpl<$Res>
    extends _$ConvoWatcherStateCopyWithImpl<$Res>
    implements _$LoadMessagesInProgressCopyWith<$Res> {
  __$LoadMessagesInProgressCopyWithImpl(_LoadMessagesInProgress _value,
      $Res Function(_LoadMessagesInProgress) _then)
      : super(_value, (v) => _then(v as _LoadMessagesInProgress));

  @override
  _LoadMessagesInProgress get _value => super._value as _LoadMessagesInProgress;
}

/// @nodoc

class _$_LoadMessagesInProgress implements _LoadMessagesInProgress {
  const _$_LoadMessagesInProgress();

  @override
  String toString() {
    return 'ConvoWatcherState.loadMessagesInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadMessagesInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(List<ChatMessage> messages) loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages)? loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesInProgress != null) {
      return loadMessagesInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMessagesInProgress value)
        loadMessagesInProgress,
    required TResult Function(_LoadMessagesSuccess value) loadMessagesSuccess,
    required TResult Function(_LoadMessagesFailure value) loadMessagesFailure,
  }) {
    return loadMessagesInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMessagesInProgress value)? loadMessagesInProgress,
    TResult Function(_LoadMessagesSuccess value)? loadMessagesSuccess,
    TResult Function(_LoadMessagesFailure value)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesInProgress != null) {
      return loadMessagesInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadMessagesInProgress implements ConvoWatcherState {
  const factory _LoadMessagesInProgress() = _$_LoadMessagesInProgress;
}

/// @nodoc
abstract class _$LoadMessagesSuccessCopyWith<$Res> {
  factory _$LoadMessagesSuccessCopyWith(_LoadMessagesSuccess value,
          $Res Function(_LoadMessagesSuccess) then) =
      __$LoadMessagesSuccessCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$LoadMessagesSuccessCopyWithImpl<$Res>
    extends _$ConvoWatcherStateCopyWithImpl<$Res>
    implements _$LoadMessagesSuccessCopyWith<$Res> {
  __$LoadMessagesSuccessCopyWithImpl(
      _LoadMessagesSuccess _value, $Res Function(_LoadMessagesSuccess) _then)
      : super(_value, (v) => _then(v as _LoadMessagesSuccess));

  @override
  _LoadMessagesSuccess get _value => super._value as _LoadMessagesSuccess;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_LoadMessagesSuccess(
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$_LoadMessagesSuccess implements _LoadMessagesSuccess {
  const _$_LoadMessagesSuccess(this.messages);

  @override
  final List<ChatMessage> messages;

  @override
  String toString() {
    return 'ConvoWatcherState.loadMessagesSuccess(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMessagesSuccess &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$LoadMessagesSuccessCopyWith<_LoadMessagesSuccess> get copyWith =>
      __$LoadMessagesSuccessCopyWithImpl<_LoadMessagesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(List<ChatMessage> messages) loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesSuccess(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages)? loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesSuccess != null) {
      return loadMessagesSuccess(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMessagesInProgress value)
        loadMessagesInProgress,
    required TResult Function(_LoadMessagesSuccess value) loadMessagesSuccess,
    required TResult Function(_LoadMessagesFailure value) loadMessagesFailure,
  }) {
    return loadMessagesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMessagesInProgress value)? loadMessagesInProgress,
    TResult Function(_LoadMessagesSuccess value)? loadMessagesSuccess,
    TResult Function(_LoadMessagesFailure value)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesSuccess != null) {
      return loadMessagesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadMessagesSuccess implements ConvoWatcherState {
  const factory _LoadMessagesSuccess(List<ChatMessage> messages) =
      _$_LoadMessagesSuccess;

  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMessagesSuccessCopyWith<_LoadMessagesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMessagesFailureCopyWith<$Res> {
  factory _$LoadMessagesFailureCopyWith(_LoadMessagesFailure value,
          $Res Function(_LoadMessagesFailure) then) =
      __$LoadMessagesFailureCopyWithImpl<$Res>;
  $Res call({DataFailure dataFailure});

  $DataFailureCopyWith<$Res> get dataFailure;
}

/// @nodoc
class __$LoadMessagesFailureCopyWithImpl<$Res>
    extends _$ConvoWatcherStateCopyWithImpl<$Res>
    implements _$LoadMessagesFailureCopyWith<$Res> {
  __$LoadMessagesFailureCopyWithImpl(
      _LoadMessagesFailure _value, $Res Function(_LoadMessagesFailure) _then)
      : super(_value, (v) => _then(v as _LoadMessagesFailure));

  @override
  _LoadMessagesFailure get _value => super._value as _LoadMessagesFailure;

  @override
  $Res call({
    Object? dataFailure = freezed,
  }) {
    return _then(_LoadMessagesFailure(
      dataFailure == freezed
          ? _value.dataFailure
          : dataFailure // ignore: cast_nullable_to_non_nullable
              as DataFailure,
    ));
  }

  @override
  $DataFailureCopyWith<$Res> get dataFailure {
    return $DataFailureCopyWith<$Res>(_value.dataFailure, (value) {
      return _then(_value.copyWith(dataFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadMessagesFailure implements _LoadMessagesFailure {
  const _$_LoadMessagesFailure(this.dataFailure);

  @override
  final DataFailure dataFailure;

  @override
  String toString() {
    return 'ConvoWatcherState.loadMessagesFailure(dataFailure: $dataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMessagesFailure &&
            (identical(other.dataFailure, dataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.dataFailure, dataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadMessagesFailureCopyWith<_LoadMessagesFailure> get copyWith =>
      __$LoadMessagesFailureCopyWithImpl<_LoadMessagesFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(List<ChatMessage> messages) loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages)? loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesFailure != null) {
      return loadMessagesFailure(dataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMessagesInProgress value)
        loadMessagesInProgress,
    required TResult Function(_LoadMessagesSuccess value) loadMessagesSuccess,
    required TResult Function(_LoadMessagesFailure value) loadMessagesFailure,
  }) {
    return loadMessagesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMessagesInProgress value)? loadMessagesInProgress,
    TResult Function(_LoadMessagesSuccess value)? loadMessagesSuccess,
    TResult Function(_LoadMessagesFailure value)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesFailure != null) {
      return loadMessagesFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadMessagesFailure implements ConvoWatcherState {
  const factory _LoadMessagesFailure(DataFailure dataFailure) =
      _$_LoadMessagesFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMessagesFailureCopyWith<_LoadMessagesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
