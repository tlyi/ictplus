// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notif_counter_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotifCounterWatcherEventTearOff {
  const _$NotifCounterWatcherEventTearOff();

  _RetrieveUnreadNotifsStarted retrieveUnreadNotifsStarted(
      {required String userId}) {
    return _RetrieveUnreadNotifsStarted(
      userId: userId,
    );
  }

  _UnreadNotifsReceived unreadNotifsReceived(
      Either<DataFailure, int> failureOrUnreadNotifCount, String userId) {
    return _UnreadNotifsReceived(
      failureOrUnreadNotifCount,
      userId,
    );
  }
}

/// @nodoc
const $NotifCounterWatcherEvent = _$NotifCounterWatcherEventTearOff();

/// @nodoc
mixin _$NotifCounterWatcherEvent {
  String get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadNotifsStarted,
    required TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)
        unreadNotifsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadNotifsStarted,
    TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)?
        unreadNotifsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadNotifsStarted value)
        retrieveUnreadNotifsStarted,
    required TResult Function(_UnreadNotifsReceived value) unreadNotifsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadNotifsStarted value)?
        retrieveUnreadNotifsStarted,
    TResult Function(_UnreadNotifsReceived value)? unreadNotifsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotifCounterWatcherEventCopyWith<NotifCounterWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifCounterWatcherEventCopyWith<$Res> {
  factory $NotifCounterWatcherEventCopyWith(NotifCounterWatcherEvent value,
          $Res Function(NotifCounterWatcherEvent) then) =
      _$NotifCounterWatcherEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$NotifCounterWatcherEventCopyWithImpl<$Res>
    implements $NotifCounterWatcherEventCopyWith<$Res> {
  _$NotifCounterWatcherEventCopyWithImpl(this._value, this._then);

  final NotifCounterWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NotifCounterWatcherEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RetrieveUnreadNotifsStartedCopyWith<$Res>
    implements $NotifCounterWatcherEventCopyWith<$Res> {
  factory _$RetrieveUnreadNotifsStartedCopyWith(
          _RetrieveUnreadNotifsStarted value,
          $Res Function(_RetrieveUnreadNotifsStarted) then) =
      __$RetrieveUnreadNotifsStartedCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$RetrieveUnreadNotifsStartedCopyWithImpl<$Res>
    extends _$NotifCounterWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveUnreadNotifsStartedCopyWith<$Res> {
  __$RetrieveUnreadNotifsStartedCopyWithImpl(
      _RetrieveUnreadNotifsStarted _value,
      $Res Function(_RetrieveUnreadNotifsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveUnreadNotifsStarted));

  @override
  _RetrieveUnreadNotifsStarted get _value =>
      super._value as _RetrieveUnreadNotifsStarted;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_RetrieveUnreadNotifsStarted(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveUnreadNotifsStarted implements _RetrieveUnreadNotifsStarted {
  const _$_RetrieveUnreadNotifsStarted({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'NotifCounterWatcherEvent.retrieveUnreadNotifsStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveUnreadNotifsStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$RetrieveUnreadNotifsStartedCopyWith<_RetrieveUnreadNotifsStarted>
      get copyWith => __$RetrieveUnreadNotifsStartedCopyWithImpl<
          _RetrieveUnreadNotifsStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadNotifsStarted,
    required TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)
        unreadNotifsReceived,
  }) {
    return retrieveUnreadNotifsStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadNotifsStarted,
    TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)?
        unreadNotifsReceived,
    required TResult orElse(),
  }) {
    if (retrieveUnreadNotifsStarted != null) {
      return retrieveUnreadNotifsStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadNotifsStarted value)
        retrieveUnreadNotifsStarted,
    required TResult Function(_UnreadNotifsReceived value) unreadNotifsReceived,
  }) {
    return retrieveUnreadNotifsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadNotifsStarted value)?
        retrieveUnreadNotifsStarted,
    TResult Function(_UnreadNotifsReceived value)? unreadNotifsReceived,
    required TResult orElse(),
  }) {
    if (retrieveUnreadNotifsStarted != null) {
      return retrieveUnreadNotifsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveUnreadNotifsStarted
    implements NotifCounterWatcherEvent {
  const factory _RetrieveUnreadNotifsStarted({required String userId}) =
      _$_RetrieveUnreadNotifsStarted;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RetrieveUnreadNotifsStartedCopyWith<_RetrieveUnreadNotifsStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnreadNotifsReceivedCopyWith<$Res>
    implements $NotifCounterWatcherEventCopyWith<$Res> {
  factory _$UnreadNotifsReceivedCopyWith(_UnreadNotifsReceived value,
          $Res Function(_UnreadNotifsReceived) then) =
      __$UnreadNotifsReceivedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, int> failureOrUnreadNotifCount, String userId});
}

/// @nodoc
class __$UnreadNotifsReceivedCopyWithImpl<$Res>
    extends _$NotifCounterWatcherEventCopyWithImpl<$Res>
    implements _$UnreadNotifsReceivedCopyWith<$Res> {
  __$UnreadNotifsReceivedCopyWithImpl(
      _UnreadNotifsReceived _value, $Res Function(_UnreadNotifsReceived) _then)
      : super(_value, (v) => _then(v as _UnreadNotifsReceived));

  @override
  _UnreadNotifsReceived get _value => super._value as _UnreadNotifsReceived;

  @override
  $Res call({
    Object? failureOrUnreadNotifCount = freezed,
    Object? userId = freezed,
  }) {
    return _then(_UnreadNotifsReceived(
      failureOrUnreadNotifCount == freezed
          ? _value.failureOrUnreadNotifCount
          : failureOrUnreadNotifCount // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, int>,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnreadNotifsReceived implements _UnreadNotifsReceived {
  const _$_UnreadNotifsReceived(this.failureOrUnreadNotifCount, this.userId);

  @override
  final Either<DataFailure, int> failureOrUnreadNotifCount;
  @override
  final String userId;

  @override
  String toString() {
    return 'NotifCounterWatcherEvent.unreadNotifsReceived(failureOrUnreadNotifCount: $failureOrUnreadNotifCount, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnreadNotifsReceived &&
            (identical(other.failureOrUnreadNotifCount,
                    failureOrUnreadNotifCount) ||
                const DeepCollectionEquality().equals(
                    other.failureOrUnreadNotifCount,
                    failureOrUnreadNotifCount)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUnreadNotifCount) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UnreadNotifsReceivedCopyWith<_UnreadNotifsReceived> get copyWith =>
      __$UnreadNotifsReceivedCopyWithImpl<_UnreadNotifsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) retrieveUnreadNotifsStarted,
    required TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)
        unreadNotifsReceived,
  }) {
    return unreadNotifsReceived(failureOrUnreadNotifCount, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? retrieveUnreadNotifsStarted,
    TResult Function(
            Either<DataFailure, int> failureOrUnreadNotifCount, String userId)?
        unreadNotifsReceived,
    required TResult orElse(),
  }) {
    if (unreadNotifsReceived != null) {
      return unreadNotifsReceived(failureOrUnreadNotifCount, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUnreadNotifsStarted value)
        retrieveUnreadNotifsStarted,
    required TResult Function(_UnreadNotifsReceived value) unreadNotifsReceived,
  }) {
    return unreadNotifsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUnreadNotifsStarted value)?
        retrieveUnreadNotifsStarted,
    TResult Function(_UnreadNotifsReceived value)? unreadNotifsReceived,
    required TResult orElse(),
  }) {
    if (unreadNotifsReceived != null) {
      return unreadNotifsReceived(this);
    }
    return orElse();
  }
}

abstract class _UnreadNotifsReceived implements NotifCounterWatcherEvent {
  const factory _UnreadNotifsReceived(
          Either<DataFailure, int> failureOrUnreadNotifCount, String userId) =
      _$_UnreadNotifsReceived;

  Either<DataFailure, int> get failureOrUnreadNotifCount =>
      throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnreadNotifsReceivedCopyWith<_UnreadNotifsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotifCounterWatcherStateTearOff {
  const _$NotifCounterWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  LoadSuccess loadSuccess(int unread, String userId) {
    return LoadSuccess(
      unread,
      userId,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $NotifCounterWatcherState = _$NotifCounterWatcherStateTearOff();

/// @nodoc
mixin _$NotifCounterWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(int unread, String userId) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unread, String userId)? loadSuccess,
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
abstract class $NotifCounterWatcherStateCopyWith<$Res> {
  factory $NotifCounterWatcherStateCopyWith(NotifCounterWatcherState value,
          $Res Function(NotifCounterWatcherState) then) =
      _$NotifCounterWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotifCounterWatcherStateCopyWithImpl<$Res>
    implements $NotifCounterWatcherStateCopyWith<$Res> {
  _$NotifCounterWatcherStateCopyWithImpl(this._value, this._then);

  final NotifCounterWatcherState _value;
  // ignore: unused_field
  final $Res Function(NotifCounterWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotifCounterWatcherStateCopyWithImpl<$Res>
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
    return 'NotifCounterWatcherState.initial()';
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
    required TResult Function(int unread, String userId) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unread, String userId)? loadSuccess,
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

abstract class _Initial implements NotifCounterWatcherState {
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
    extends _$NotifCounterWatcherStateCopyWithImpl<$Res>
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
    return 'NotifCounterWatcherState.loadInProgress()';
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
    required TResult Function(int unread, String userId) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unread, String userId)? loadSuccess,
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

abstract class _LoadInProgress implements NotifCounterWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({int unread, String userId});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$NotifCounterWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? unread = freezed,
    Object? userId = freezed,
  }) {
    return _then(LoadSuccess(
      unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.unread, this.userId);

  @override
  final int unread;
  @override
  final String userId;

  @override
  String toString() {
    return 'NotifCounterWatcherState.loadSuccess(unread: $unread, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.unread, unread) ||
                const DeepCollectionEquality().equals(other.unread, unread)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unread) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(int unread, String userId) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(unread, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unread, String userId)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(unread, userId);
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

abstract class LoadSuccess implements NotifCounterWatcherState {
  const factory LoadSuccess(int unread, String userId) = _$LoadSuccess;

  int get unread => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
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
    extends _$NotifCounterWatcherStateCopyWithImpl<$Res>
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
    return 'NotifCounterWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(int unread, String userId) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(int unread, String userId)? loadSuccess,
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

abstract class _LoadFailure implements NotifCounterWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
