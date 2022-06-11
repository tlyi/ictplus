// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatWatcherEventTearOff {
  const _$ChatWatcherEventTearOff();

  _RetrieveChatsStarted retrieveChatsStarted() {
    return const _RetrieveChatsStarted();
  }

  _ChatsReceived chatsReceived(Either<DataFailure, List<Chat>> failureOrChats) {
    return _ChatsReceived(
      failureOrChats,
    );
  }

  _RetrieveProfilesStarted retrieveProfilesStarted(List<Chat> chats) {
    return _RetrieveProfilesStarted(
      chats,
    );
  }
}

/// @nodoc
const $ChatWatcherEvent = _$ChatWatcherEventTearOff();

/// @nodoc
mixin _$ChatWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function(Either<DataFailure, List<Chat>> failureOrChats)
        chatsReceived,
    required TResult Function(List<Chat> chats) retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function(Either<DataFailure, List<Chat>> failureOrChats)?
        chatsReceived,
    TResult Function(List<Chat> chats)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherEventCopyWith<$Res> {
  factory $ChatWatcherEventCopyWith(
          ChatWatcherEvent value, $Res Function(ChatWatcherEvent) then) =
      _$ChatWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatWatcherEventCopyWithImpl<$Res>
    implements $ChatWatcherEventCopyWith<$Res> {
  _$ChatWatcherEventCopyWithImpl(this._value, this._then);

  final ChatWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ChatWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveChatsStartedCopyWith<$Res> {
  factory _$RetrieveChatsStartedCopyWith(_RetrieveChatsStarted value,
          $Res Function(_RetrieveChatsStarted) then) =
      __$RetrieveChatsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveChatsStartedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveChatsStartedCopyWith<$Res> {
  __$RetrieveChatsStartedCopyWithImpl(
      _RetrieveChatsStarted _value, $Res Function(_RetrieveChatsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveChatsStarted));

  @override
  _RetrieveChatsStarted get _value => super._value as _RetrieveChatsStarted;
}

/// @nodoc

class _$_RetrieveChatsStarted implements _RetrieveChatsStarted {
  const _$_RetrieveChatsStarted();

  @override
  String toString() {
    return 'ChatWatcherEvent.retrieveChatsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveChatsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function(Either<DataFailure, List<Chat>> failureOrChats)
        chatsReceived,
    required TResult Function(List<Chat> chats) retrieveProfilesStarted,
  }) {
    return retrieveChatsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function(Either<DataFailure, List<Chat>> failureOrChats)?
        chatsReceived,
    TResult Function(List<Chat> chats)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveChatsStarted != null) {
      return retrieveChatsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveChatsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveChatsStarted != null) {
      return retrieveChatsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveChatsStarted implements ChatWatcherEvent {
  const factory _RetrieveChatsStarted() = _$_RetrieveChatsStarted;
}

/// @nodoc
abstract class _$ChatsReceivedCopyWith<$Res> {
  factory _$ChatsReceivedCopyWith(
          _ChatsReceived value, $Res Function(_ChatsReceived) then) =
      __$ChatsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<Chat>> failureOrChats});
}

/// @nodoc
class __$ChatsReceivedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res>
    implements _$ChatsReceivedCopyWith<$Res> {
  __$ChatsReceivedCopyWithImpl(
      _ChatsReceived _value, $Res Function(_ChatsReceived) _then)
      : super(_value, (v) => _then(v as _ChatsReceived));

  @override
  _ChatsReceived get _value => super._value as _ChatsReceived;

  @override
  $Res call({
    Object? failureOrChats = freezed,
  }) {
    return _then(_ChatsReceived(
      failureOrChats == freezed
          ? _value.failureOrChats
          : failureOrChats // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Chat>>,
    ));
  }
}

/// @nodoc

class _$_ChatsReceived implements _ChatsReceived {
  const _$_ChatsReceived(this.failureOrChats);

  @override
  final Either<DataFailure, List<Chat>> failureOrChats;

  @override
  String toString() {
    return 'ChatWatcherEvent.chatsReceived(failureOrChats: $failureOrChats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatsReceived &&
            (identical(other.failureOrChats, failureOrChats) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrChats, failureOrChats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrChats);

  @JsonKey(ignore: true)
  @override
  _$ChatsReceivedCopyWith<_ChatsReceived> get copyWith =>
      __$ChatsReceivedCopyWithImpl<_ChatsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function(Either<DataFailure, List<Chat>> failureOrChats)
        chatsReceived,
    required TResult Function(List<Chat> chats) retrieveProfilesStarted,
  }) {
    return chatsReceived(failureOrChats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function(Either<DataFailure, List<Chat>> failureOrChats)?
        chatsReceived,
    TResult Function(List<Chat> chats)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (chatsReceived != null) {
      return chatsReceived(failureOrChats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return chatsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (chatsReceived != null) {
      return chatsReceived(this);
    }
    return orElse();
  }
}

abstract class _ChatsReceived implements ChatWatcherEvent {
  const factory _ChatsReceived(Either<DataFailure, List<Chat>> failureOrChats) =
      _$_ChatsReceived;

  Either<DataFailure, List<Chat>> get failureOrChats =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChatsReceivedCopyWith<_ChatsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveProfilesStartedCopyWith<$Res> {
  factory _$RetrieveProfilesStartedCopyWith(_RetrieveProfilesStarted value,
          $Res Function(_RetrieveProfilesStarted) then) =
      __$RetrieveProfilesStartedCopyWithImpl<$Res>;
  $Res call({List<Chat> chats});
}

/// @nodoc
class __$RetrieveProfilesStartedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveProfilesStartedCopyWith<$Res> {
  __$RetrieveProfilesStartedCopyWithImpl(_RetrieveProfilesStarted _value,
      $Res Function(_RetrieveProfilesStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveProfilesStarted));

  @override
  _RetrieveProfilesStarted get _value =>
      super._value as _RetrieveProfilesStarted;

  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(_RetrieveProfilesStarted(
      chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$_RetrieveProfilesStarted implements _RetrieveProfilesStarted {
  const _$_RetrieveProfilesStarted(this.chats);

  @override
  final List<Chat> chats;

  @override
  String toString() {
    return 'ChatWatcherEvent.retrieveProfilesStarted(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveProfilesStarted &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chats);

  @JsonKey(ignore: true)
  @override
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      __$RetrieveProfilesStartedCopyWithImpl<_RetrieveProfilesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function(Either<DataFailure, List<Chat>> failureOrChats)
        chatsReceived,
    required TResult Function(List<Chat> chats) retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function(Either<DataFailure, List<Chat>> failureOrChats)?
        chatsReceived,
    TResult Function(List<Chat> chats)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveProfilesStarted implements ChatWatcherEvent {
  const factory _RetrieveProfilesStarted(List<Chat> chats) =
      _$_RetrieveProfilesStarted;

  List<Chat> get chats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatWatcherStateTearOff {
  const _$ChatWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Chat> chats, List<Profile> profiles) {
    return _LoadSuccess(
      chats,
      profiles,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ChatWatcherState = _$ChatWatcherStateTearOff();

/// @nodoc
mixin _$ChatWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Chat> chats, List<Profile> profiles)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Chat> chats, List<Profile> profiles)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherStateCopyWith<$Res> {
  factory $ChatWatcherStateCopyWith(
          ChatWatcherState value, $Res Function(ChatWatcherState) then) =
      _$ChatWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatWatcherStateCopyWithImpl<$Res>
    implements $ChatWatcherStateCopyWith<$Res> {
  _$ChatWatcherStateCopyWithImpl(this._value, this._then);

  final ChatWatcherState _value;
  // ignore: unused_field
  final $Res Function(ChatWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ChatWatcherStateCopyWithImpl<$Res>
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
    return 'ChatWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Chat> chats, List<Profile> profiles)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Chat> chats, List<Profile> profiles)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ChatWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Chat> chats, List<Profile> profiles)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Chat> chats, List<Profile> profiles)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChatWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Chat> chats, List<Profile> profiles});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? chats = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_LoadSuccess(
      chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.chats, this.profiles);

  @override
  final List<Chat> chats;
  @override
  final List<Profile> profiles;

  @override
  String toString() {
    return 'ChatWatcherState.loadSuccess(chats: $chats, profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chats) ^
      const DeepCollectionEquality().hash(profiles);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Chat> chats, List<Profile> profiles)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(chats, profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Chat> chats, List<Profile> profiles)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chats, profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ChatWatcherState {
  const factory _LoadSuccess(List<Chat> chats, List<Profile> profiles) =
      _$_LoadSuccess;

  List<Chat> get chats => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DataFailure dataFailure});

  $DataFailureCopyWith<$Res> get dataFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? dataFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.dataFailure);

  @override
  final DataFailure dataFailure;

  @override
  String toString() {
    return 'ChatWatcherState.loadFailure(dataFailure: $dataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.dataFailure, dataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.dataFailure, dataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Chat> chats, List<Profile> profiles)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Chat> chats, List<Profile> profiles)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(dataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChatWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
