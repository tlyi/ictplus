// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_convo_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationConvoWatcherEventTearOff {
  const _$LocationConvoWatcherEventTearOff();

  _RetrieveConvoStarted retrieveConvoStarted(String convoId) {
    return _RetrieveConvoStarted(
      convoId,
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

  _RetrieveProfilesStarted retrieveProfilesStarted(List<ChatMessage> messages) {
    return _RetrieveProfilesStarted(
      messages,
    );
  }
}

/// @nodoc
const $LocationConvoWatcherEvent = _$LocationConvoWatcherEventTearOff();

/// @nodoc
mixin _$LocationConvoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String convoId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
    required TResult Function(List<ChatMessage> messages)
        retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String convoId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    TResult Function(List<ChatMessage> messages)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationConvoWatcherEventCopyWith<$Res> {
  factory $LocationConvoWatcherEventCopyWith(LocationConvoWatcherEvent value,
          $Res Function(LocationConvoWatcherEvent) then) =
      _$LocationConvoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationConvoWatcherEventCopyWithImpl<$Res>
    implements $LocationConvoWatcherEventCopyWith<$Res> {
  _$LocationConvoWatcherEventCopyWithImpl(this._value, this._then);

  final LocationConvoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(LocationConvoWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveConvoStartedCopyWith<$Res> {
  factory _$RetrieveConvoStartedCopyWith(_RetrieveConvoStarted value,
          $Res Function(_RetrieveConvoStarted) then) =
      __$RetrieveConvoStartedCopyWithImpl<$Res>;
  $Res call({String convoId});
}

/// @nodoc
class __$RetrieveConvoStartedCopyWithImpl<$Res>
    extends _$LocationConvoWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveConvoStartedCopyWith<$Res> {
  __$RetrieveConvoStartedCopyWithImpl(
      _RetrieveConvoStarted _value, $Res Function(_RetrieveConvoStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveConvoStarted));

  @override
  _RetrieveConvoStarted get _value => super._value as _RetrieveConvoStarted;

  @override
  $Res call({
    Object? convoId = freezed,
  }) {
    return _then(_RetrieveConvoStarted(
      convoId == freezed
          ? _value.convoId
          : convoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveConvoStarted implements _RetrieveConvoStarted {
  const _$_RetrieveConvoStarted(this.convoId);

  @override
  final String convoId;

  @override
  String toString() {
    return 'LocationConvoWatcherEvent.retrieveConvoStarted(convoId: $convoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveConvoStarted &&
            (identical(other.convoId, convoId) ||
                const DeepCollectionEquality().equals(other.convoId, convoId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(convoId);

  @JsonKey(ignore: true)
  @override
  _$RetrieveConvoStartedCopyWith<_RetrieveConvoStarted> get copyWith =>
      __$RetrieveConvoStartedCopyWithImpl<_RetrieveConvoStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String convoId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
    required TResult Function(List<ChatMessage> messages)
        retrieveProfilesStarted,
  }) {
    return retrieveConvoStarted(convoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String convoId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    TResult Function(List<ChatMessage> messages)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveConvoStarted != null) {
      return retrieveConvoStarted(convoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveConvoStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveConvoStarted != null) {
      return retrieveConvoStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveConvoStarted implements LocationConvoWatcherEvent {
  const factory _RetrieveConvoStarted(String convoId) = _$_RetrieveConvoStarted;

  String get convoId => throw _privateConstructorUsedError;
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
    extends _$LocationConvoWatcherEventCopyWithImpl<$Res>
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
    return 'LocationConvoWatcherEvent.retrieveConvoEnded()';
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
    required TResult Function(String convoId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
    required TResult Function(List<ChatMessage> messages)
        retrieveProfilesStarted,
  }) {
    return retrieveConvoEnded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String convoId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    TResult Function(List<ChatMessage> messages)? retrieveProfilesStarted,
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
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveConvoEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveConvoEnded != null) {
      return retrieveConvoEnded(this);
    }
    return orElse();
  }
}

abstract class _RetrieveConvoEnded implements LocationConvoWatcherEvent {
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
    extends _$LocationConvoWatcherEventCopyWithImpl<$Res>
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
    return 'LocationConvoWatcherEvent.convoReceived(failureOrMessages: $failureOrMessages)';
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
    required TResult Function(String convoId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
    required TResult Function(List<ChatMessage> messages)
        retrieveProfilesStarted,
  }) {
    return convoReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String convoId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    TResult Function(List<ChatMessage> messages)? retrieveProfilesStarted,
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
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return convoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (convoReceived != null) {
      return convoReceived(this);
    }
    return orElse();
  }
}

abstract class _ConvoReceived implements LocationConvoWatcherEvent {
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
abstract class _$RetrieveProfilesStartedCopyWith<$Res> {
  factory _$RetrieveProfilesStartedCopyWith(_RetrieveProfilesStarted value,
          $Res Function(_RetrieveProfilesStarted) then) =
      __$RetrieveProfilesStartedCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$RetrieveProfilesStartedCopyWithImpl<$Res>
    extends _$LocationConvoWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveProfilesStartedCopyWith<$Res> {
  __$RetrieveProfilesStartedCopyWithImpl(_RetrieveProfilesStarted _value,
      $Res Function(_RetrieveProfilesStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveProfilesStarted));

  @override
  _RetrieveProfilesStarted get _value =>
      super._value as _RetrieveProfilesStarted;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_RetrieveProfilesStarted(
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$_RetrieveProfilesStarted implements _RetrieveProfilesStarted {
  const _$_RetrieveProfilesStarted(this.messages);

  @override
  final List<ChatMessage> messages;

  @override
  String toString() {
    return 'LocationConvoWatcherEvent.retrieveProfilesStarted(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveProfilesStarted &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      __$RetrieveProfilesStartedCopyWithImpl<_RetrieveProfilesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String convoId) retrieveConvoStarted,
    required TResult Function() retrieveConvoEnded,
    required TResult Function(
            Either<DataFailure, List<ChatMessage>> failureOrMessages)
        convoReceived,
    required TResult Function(List<ChatMessage> messages)
        retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String convoId)? retrieveConvoStarted,
    TResult Function()? retrieveConvoEnded,
    TResult Function(Either<DataFailure, List<ChatMessage>> failureOrMessages)?
        convoReceived,
    TResult Function(List<ChatMessage> messages)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveConvoStarted value) retrieveConvoStarted,
    required TResult Function(_RetrieveConvoEnded value) retrieveConvoEnded,
    required TResult Function(_ConvoReceived value) convoReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveConvoStarted value)? retrieveConvoStarted,
    TResult Function(_RetrieveConvoEnded value)? retrieveConvoEnded,
    TResult Function(_ConvoReceived value)? convoReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveProfilesStarted implements LocationConvoWatcherEvent {
  const factory _RetrieveProfilesStarted(List<ChatMessage> messages) =
      _$_RetrieveProfilesStarted;

  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationConvoWatcherStateTearOff {
  const _$LocationConvoWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadMessagesInProgress loadMessagesInProgress() {
    return const _LoadMessagesInProgress();
  }

  _LoadMessagesSuccess loadMessagesSuccess(
      List<ChatMessage> messages, List<Profile> profiles) {
    return _LoadMessagesSuccess(
      messages,
      profiles,
    );
  }

  _LoadMessagesFailure loadMessagesFailure(DataFailure dataFailure) {
    return _LoadMessagesFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $LocationConvoWatcherState = _$LocationConvoWatcherStateTearOff();

/// @nodoc
mixin _$LocationConvoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadMessagesInProgress,
    required TResult Function(
            List<ChatMessage> messages, List<Profile> profiles)
        loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages, List<Profile> profiles)?
        loadMessagesSuccess,
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
abstract class $LocationConvoWatcherStateCopyWith<$Res> {
  factory $LocationConvoWatcherStateCopyWith(LocationConvoWatcherState value,
          $Res Function(LocationConvoWatcherState) then) =
      _$LocationConvoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationConvoWatcherStateCopyWithImpl<$Res>
    implements $LocationConvoWatcherStateCopyWith<$Res> {
  _$LocationConvoWatcherStateCopyWithImpl(this._value, this._then);

  final LocationConvoWatcherState _value;
  // ignore: unused_field
  final $Res Function(LocationConvoWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$LocationConvoWatcherStateCopyWithImpl<$Res>
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
    return 'LocationConvoWatcherState.initial()';
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
    required TResult Function(
            List<ChatMessage> messages, List<Profile> profiles)
        loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages, List<Profile> profiles)?
        loadMessagesSuccess,
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

abstract class _Initial implements LocationConvoWatcherState {
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
    extends _$LocationConvoWatcherStateCopyWithImpl<$Res>
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
    return 'LocationConvoWatcherState.loadMessagesInProgress()';
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
    required TResult Function(
            List<ChatMessage> messages, List<Profile> profiles)
        loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages, List<Profile> profiles)?
        loadMessagesSuccess,
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

abstract class _LoadMessagesInProgress implements LocationConvoWatcherState {
  const factory _LoadMessagesInProgress() = _$_LoadMessagesInProgress;
}

/// @nodoc
abstract class _$LoadMessagesSuccessCopyWith<$Res> {
  factory _$LoadMessagesSuccessCopyWith(_LoadMessagesSuccess value,
          $Res Function(_LoadMessagesSuccess) then) =
      __$LoadMessagesSuccessCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages, List<Profile> profiles});
}

/// @nodoc
class __$LoadMessagesSuccessCopyWithImpl<$Res>
    extends _$LocationConvoWatcherStateCopyWithImpl<$Res>
    implements _$LoadMessagesSuccessCopyWith<$Res> {
  __$LoadMessagesSuccessCopyWithImpl(
      _LoadMessagesSuccess _value, $Res Function(_LoadMessagesSuccess) _then)
      : super(_value, (v) => _then(v as _LoadMessagesSuccess));

  @override
  _LoadMessagesSuccess get _value => super._value as _LoadMessagesSuccess;

  @override
  $Res call({
    Object? messages = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_LoadMessagesSuccess(
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_LoadMessagesSuccess implements _LoadMessagesSuccess {
  const _$_LoadMessagesSuccess(this.messages, this.profiles);

  @override
  final List<ChatMessage> messages;
  @override
  final List<Profile> profiles;

  @override
  String toString() {
    return 'LocationConvoWatcherState.loadMessagesSuccess(messages: $messages, profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMessagesSuccess &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(profiles);

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
    required TResult Function(
            List<ChatMessage> messages, List<Profile> profiles)
        loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesSuccess(messages, profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages, List<Profile> profiles)?
        loadMessagesSuccess,
    TResult Function(DataFailure dataFailure)? loadMessagesFailure,
    required TResult orElse(),
  }) {
    if (loadMessagesSuccess != null) {
      return loadMessagesSuccess(messages, profiles);
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

abstract class _LoadMessagesSuccess implements LocationConvoWatcherState {
  const factory _LoadMessagesSuccess(
          List<ChatMessage> messages, List<Profile> profiles) =
      _$_LoadMessagesSuccess;

  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
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
    extends _$LocationConvoWatcherStateCopyWithImpl<$Res>
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
    return 'LocationConvoWatcherState.loadMessagesFailure(dataFailure: $dataFailure)';
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
    required TResult Function(
            List<ChatMessage> messages, List<Profile> profiles)
        loadMessagesSuccess,
    required TResult Function(DataFailure dataFailure) loadMessagesFailure,
  }) {
    return loadMessagesFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadMessagesInProgress,
    TResult Function(List<ChatMessage> messages, List<Profile> profiles)?
        loadMessagesSuccess,
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

abstract class _LoadMessagesFailure implements LocationConvoWatcherState {
  const factory _LoadMessagesFailure(DataFailure dataFailure) =
      _$_LoadMessagesFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMessagesFailureCopyWith<_LoadMessagesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
