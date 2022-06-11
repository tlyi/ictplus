// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_counter_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatCounterWatcherEventTearOff {
  const _$ChatCounterWatcherEventTearOff();

  _RetrieveUnreadChatsStarted retrieveUnreadChatsStarted(
      {required String userId}) {
    return _RetrieveUnreadChatsStarted(
      userId: userId,
    );
  }

  _UnreadChatsReceived unreadChatsReceived(
      Either<DataFailure, int> failureOrUnreadChatCount) {
    return _UnreadChatsReceived(
      failureOrUnreadChatCount,
    );
  }
}

/// @nodoc
const $ChatCounterWatcherEvent = _$ChatCounterWatcherEventTearOff();

/// @nodoc
mixin _$ChatCounterWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadChatsStarted,
    required TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)
        unreadChatsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadChatsStarted,
    TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)?
        unreadChatsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadChatsStarted value)
        retrieveUnreadChatsStarted,
    required TResult Function(_UnreadChatsReceived value) unreadChatsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadChatsStarted value)?
        retrieveUnreadChatsStarted,
    TResult Function(_UnreadChatsReceived value)? unreadChatsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCounterWatcherEventCopyWith<$Res> {
  factory $ChatCounterWatcherEventCopyWith(ChatCounterWatcherEvent value,
          $Res Function(ChatCounterWatcherEvent) then) =
      _$ChatCounterWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatCounterWatcherEventCopyWithImpl<$Res>
    implements $ChatCounterWatcherEventCopyWith<$Res> {
  _$ChatCounterWatcherEventCopyWithImpl(this._value, this._then);

  final ChatCounterWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ChatCounterWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveUnreadChatsStartedCopyWith<$Res> {
  factory _$RetrieveUnreadChatsStartedCopyWith(
          _RetrieveUnreadChatsStarted value,
          $Res Function(_RetrieveUnreadChatsStarted) then) =
      __$RetrieveUnreadChatsStartedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$RetrieveUnreadChatsStartedCopyWithImpl<$Res>
    extends _$ChatCounterWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveUnreadChatsStartedCopyWith<$Res> {
  __$RetrieveUnreadChatsStartedCopyWithImpl(_RetrieveUnreadChatsStarted _value,
      $Res Function(_RetrieveUnreadChatsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveUnreadChatsStarted));

  @override
  _RetrieveUnreadChatsStarted get _value =>
      super._value as _RetrieveUnreadChatsStarted;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_RetrieveUnreadChatsStarted(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveUnreadChatsStarted implements _RetrieveUnreadChatsStarted {
  const _$_RetrieveUnreadChatsStarted({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatCounterWatcherEvent.retrieveUnreadChatsStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveUnreadChatsStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$RetrieveUnreadChatsStartedCopyWith<_RetrieveUnreadChatsStarted>
      get copyWith => __$RetrieveUnreadChatsStartedCopyWithImpl<
          _RetrieveUnreadChatsStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadChatsStarted,
    required TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)
        unreadChatsReceived,
  }) {
    return retrieveUnreadChatsStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadChatsStarted,
    TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)?
        unreadChatsReceived,
    required TResult orElse(),
  }) {
    if (retrieveUnreadChatsStarted != null) {
      return retrieveUnreadChatsStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadChatsStarted value)
        retrieveUnreadChatsStarted,
    required TResult Function(_UnreadChatsReceived value) unreadChatsReceived,
  }) {
    return retrieveUnreadChatsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadChatsStarted value)?
        retrieveUnreadChatsStarted,
    TResult Function(_UnreadChatsReceived value)? unreadChatsReceived,
    required TResult orElse(),
  }) {
    if (retrieveUnreadChatsStarted != null) {
      return retrieveUnreadChatsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveUnreadChatsStarted implements ChatCounterWatcherEvent {
  const factory _RetrieveUnreadChatsStarted({required String userId}) =
      _$_RetrieveUnreadChatsStarted;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveUnreadChatsStartedCopyWith<_RetrieveUnreadChatsStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnreadChatsReceivedCopyWith<$Res> {
  factory _$UnreadChatsReceivedCopyWith(_UnreadChatsReceived value,
          $Res Function(_UnreadChatsReceived) then) =
      __$UnreadChatsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, int> failureOrUnreadChatCount});
}

/// @nodoc
class __$UnreadChatsReceivedCopyWithImpl<$Res>
    extends _$ChatCounterWatcherEventCopyWithImpl<$Res>
    implements _$UnreadChatsReceivedCopyWith<$Res> {
  __$UnreadChatsReceivedCopyWithImpl(
      _UnreadChatsReceived _value, $Res Function(_UnreadChatsReceived) _then)
      : super(_value, (v) => _then(v as _UnreadChatsReceived));

  @override
  _UnreadChatsReceived get _value => super._value as _UnreadChatsReceived;

  @override
  $Res call({
    Object? failureOrUnreadChatCount = freezed,
  }) {
    return _then(_UnreadChatsReceived(
      failureOrUnreadChatCount == freezed
          ? _value.failureOrUnreadChatCount
          : failureOrUnreadChatCount // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, int>,
    ));
  }
}

/// @nodoc

class _$_UnreadChatsReceived implements _UnreadChatsReceived {
  const _$_UnreadChatsReceived(this.failureOrUnreadChatCount);

  @override
  final Either<DataFailure, int> failureOrUnreadChatCount;

  @override
  String toString() {
    return 'ChatCounterWatcherEvent.unreadChatsReceived(failureOrUnreadChatCount: $failureOrUnreadChatCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnreadChatsReceived &&
            (identical(
                    other.failureOrUnreadChatCount, failureOrUnreadChatCount) ||
                const DeepCollectionEquality().equals(
                    other.failureOrUnreadChatCount, failureOrUnreadChatCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUnreadChatCount);

  @JsonKey(ignore: true)
  @override
  _$UnreadChatsReceivedCopyWith<_UnreadChatsReceived> get copyWith =>
      __$UnreadChatsReceivedCopyWithImpl<_UnreadChatsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadChatsStarted,
    required TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)
        unreadChatsReceived,
  }) {
    return unreadChatsReceived(failureOrUnreadChatCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadChatsStarted,
    TResult Function(Either<DataFailure, int> failureOrUnreadChatCount)?
        unreadChatsReceived,
    required TResult orElse(),
  }) {
    if (unreadChatsReceived != null) {
      return unreadChatsReceived(failureOrUnreadChatCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadChatsStarted value)
        retrieveUnreadChatsStarted,
    required TResult Function(_UnreadChatsReceived value) unreadChatsReceived,
  }) {
    return unreadChatsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadChatsStarted value)?
        retrieveUnreadChatsStarted,
    TResult Function(_UnreadChatsReceived value)? unreadChatsReceived,
    required TResult orElse(),
  }) {
    if (unreadChatsReceived != null) {
      return unreadChatsReceived(this);
    }
    return orElse();
  }
}

abstract class _UnreadChatsReceived implements ChatCounterWatcherEvent {
  const factory _UnreadChatsReceived(
          Either<DataFailure, int> failureOrUnreadChatCount) =
      _$_UnreadChatsReceived;

  Either<DataFailure, int> get failureOrUnreadChatCount =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnreadChatsReceivedCopyWith<_UnreadChatsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatCounterWatcherStateTearOff {
  const _$ChatCounterWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  LoadSuccess loadSuccess(int unreadChatCounter) {
    return LoadSuccess(
      unreadChatCounter,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ChatCounterWatcherState = _$ChatCounterWatcherStateTearOff();

/// @nodoc
mixin _$ChatCounterWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(int unreadChatCounter) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unreadChatCounter)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCounterWatcherStateCopyWith<$Res> {
  factory $ChatCounterWatcherStateCopyWith(ChatCounterWatcherState value,
          $Res Function(ChatCounterWatcherState) then) =
      _$ChatCounterWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatCounterWatcherStateCopyWithImpl<$Res>
    implements $ChatCounterWatcherStateCopyWith<$Res> {
  _$ChatCounterWatcherStateCopyWithImpl(this._value, this._then);

  final ChatCounterWatcherState _value;
  // ignore: unused_field
  final $Res Function(ChatCounterWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ChatCounterWatcherStateCopyWithImpl<$Res>
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
    return 'ChatCounterWatcherState.initial()';
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
    required TResult Function(int unreadChatCounter) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unreadChatCounter)? loadSuccess,
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
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatCounterWatcherState {
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
    extends _$ChatCounterWatcherStateCopyWithImpl<$Res>
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
    return 'ChatCounterWatcherState.loadInProgress()';
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
    required TResult Function(int unreadChatCounter) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unreadChatCounter)? loadSuccess,
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
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChatCounterWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({int unreadChatCounter});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ChatCounterWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? unreadChatCounter = freezed,
  }) {
    return _then(LoadSuccess(
      unreadChatCounter == freezed
          ? _value.unreadChatCounter
          : unreadChatCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.unreadChatCounter);

  @override
  final int unreadChatCounter;

  @override
  String toString() {
    return 'ChatCounterWatcherState.loadSuccess(unreadChatCounter: $unreadChatCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.unreadChatCounter, unreadChatCounter) ||
                const DeepCollectionEquality()
                    .equals(other.unreadChatCounter, unreadChatCounter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadChatCounter);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(int unreadChatCounter) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(unreadChatCounter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unreadChatCounter)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(unreadChatCounter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ChatCounterWatcherState {
  const factory LoadSuccess(int unreadChatCounter) = _$LoadSuccess;

  int get unreadChatCounter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
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
    extends _$ChatCounterWatcherStateCopyWithImpl<$Res>
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
    return 'ChatCounterWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(int unreadChatCounter) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unreadChatCounter)? loadSuccess,
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
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChatCounterWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
