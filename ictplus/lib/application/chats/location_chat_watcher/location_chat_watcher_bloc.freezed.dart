// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_chat_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationChatWatcherEventTearOff {
  const _$LocationChatWatcherEventTearOff();

  _RetrieveChatsStarted retrieveChatsStarted() {
    return const _RetrieveChatsStarted();
  }

  _RefreshedLocation refreshedLocation() {
    return const _RefreshedLocation();
  }

  _RetrieveChatsFromNewLocationStarted retrieveChatsFromNewLocationStarted(
      Position position) {
    return _RetrieveChatsFromNewLocationStarted(
      position,
    );
  }

  _ChatsReceived chatsReceived(
      Either<DataFailure, List<LocationChat>> failureOrChats,
      List<double> distances) {
    return _ChatsReceived(
      failureOrChats,
      distances,
    );
  }
}

/// @nodoc
const $LocationChatWatcherEvent = _$LocationChatWatcherEventTearOff();

/// @nodoc
mixin _$LocationChatWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function() refreshedLocation,
    required TResult Function(Position position)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(
            Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)
        chatsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function()? refreshedLocation,
    TResult Function(Position position)? retrieveChatsFromNewLocationStarted,
    TResult Function(Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)?
        chatsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_RefreshedLocation value) refreshedLocation,
    required TResult Function(_RetrieveChatsFromNewLocationStarted value)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_RefreshedLocation value)? refreshedLocation,
    TResult Function(_RetrieveChatsFromNewLocationStarted value)?
        retrieveChatsFromNewLocationStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatWatcherEventCopyWith<$Res> {
  factory $LocationChatWatcherEventCopyWith(LocationChatWatcherEvent value,
          $Res Function(LocationChatWatcherEvent) then) =
      _$LocationChatWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationChatWatcherEventCopyWithImpl<$Res>
    implements $LocationChatWatcherEventCopyWith<$Res> {
  _$LocationChatWatcherEventCopyWithImpl(this._value, this._then);

  final LocationChatWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(LocationChatWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveChatsStartedCopyWith<$Res> {
  factory _$RetrieveChatsStartedCopyWith(_RetrieveChatsStarted value,
          $Res Function(_RetrieveChatsStarted) then) =
      __$RetrieveChatsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveChatsStartedCopyWithImpl<$Res>
    extends _$LocationChatWatcherEventCopyWithImpl<$Res>
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
    return 'LocationChatWatcherEvent.retrieveChatsStarted()';
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
    required TResult Function() refreshedLocation,
    required TResult Function(Position position)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(
            Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)
        chatsReceived,
  }) {
    return retrieveChatsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function()? refreshedLocation,
    TResult Function(Position position)? retrieveChatsFromNewLocationStarted,
    TResult Function(Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)?
        chatsReceived,
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
    required TResult Function(_RefreshedLocation value) refreshedLocation,
    required TResult Function(_RetrieveChatsFromNewLocationStarted value)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
  }) {
    return retrieveChatsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_RefreshedLocation value)? refreshedLocation,
    TResult Function(_RetrieveChatsFromNewLocationStarted value)?
        retrieveChatsFromNewLocationStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    required TResult orElse(),
  }) {
    if (retrieveChatsStarted != null) {
      return retrieveChatsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveChatsStarted implements LocationChatWatcherEvent {
  const factory _RetrieveChatsStarted() = _$_RetrieveChatsStarted;
}

/// @nodoc
abstract class _$RefreshedLocationCopyWith<$Res> {
  factory _$RefreshedLocationCopyWith(
          _RefreshedLocation value, $Res Function(_RefreshedLocation) then) =
      __$RefreshedLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshedLocationCopyWithImpl<$Res>
    extends _$LocationChatWatcherEventCopyWithImpl<$Res>
    implements _$RefreshedLocationCopyWith<$Res> {
  __$RefreshedLocationCopyWithImpl(
      _RefreshedLocation _value, $Res Function(_RefreshedLocation) _then)
      : super(_value, (v) => _then(v as _RefreshedLocation));

  @override
  _RefreshedLocation get _value => super._value as _RefreshedLocation;
}

/// @nodoc

class _$_RefreshedLocation implements _RefreshedLocation {
  const _$_RefreshedLocation();

  @override
  String toString() {
    return 'LocationChatWatcherEvent.refreshedLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshedLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function() refreshedLocation,
    required TResult Function(Position position)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(
            Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)
        chatsReceived,
  }) {
    return refreshedLocation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function()? refreshedLocation,
    TResult Function(Position position)? retrieveChatsFromNewLocationStarted,
    TResult Function(Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)?
        chatsReceived,
    required TResult orElse(),
  }) {
    if (refreshedLocation != null) {
      return refreshedLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_RefreshedLocation value) refreshedLocation,
    required TResult Function(_RetrieveChatsFromNewLocationStarted value)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
  }) {
    return refreshedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_RefreshedLocation value)? refreshedLocation,
    TResult Function(_RetrieveChatsFromNewLocationStarted value)?
        retrieveChatsFromNewLocationStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    required TResult orElse(),
  }) {
    if (refreshedLocation != null) {
      return refreshedLocation(this);
    }
    return orElse();
  }
}

abstract class _RefreshedLocation implements LocationChatWatcherEvent {
  const factory _RefreshedLocation() = _$_RefreshedLocation;
}

/// @nodoc
abstract class _$RetrieveChatsFromNewLocationStartedCopyWith<$Res> {
  factory _$RetrieveChatsFromNewLocationStartedCopyWith(
          _RetrieveChatsFromNewLocationStarted value,
          $Res Function(_RetrieveChatsFromNewLocationStarted) then) =
      __$RetrieveChatsFromNewLocationStartedCopyWithImpl<$Res>;
  $Res call({Position position});
}

/// @nodoc
class __$RetrieveChatsFromNewLocationStartedCopyWithImpl<$Res>
    extends _$LocationChatWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveChatsFromNewLocationStartedCopyWith<$Res> {
  __$RetrieveChatsFromNewLocationStartedCopyWithImpl(
      _RetrieveChatsFromNewLocationStarted _value,
      $Res Function(_RetrieveChatsFromNewLocationStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveChatsFromNewLocationStarted));

  @override
  _RetrieveChatsFromNewLocationStarted get _value =>
      super._value as _RetrieveChatsFromNewLocationStarted;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_RetrieveChatsFromNewLocationStarted(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_RetrieveChatsFromNewLocationStarted
    implements _RetrieveChatsFromNewLocationStarted {
  const _$_RetrieveChatsFromNewLocationStarted(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'LocationChatWatcherEvent.retrieveChatsFromNewLocationStarted(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveChatsFromNewLocationStarted &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$RetrieveChatsFromNewLocationStartedCopyWith<
          _RetrieveChatsFromNewLocationStarted>
      get copyWith => __$RetrieveChatsFromNewLocationStartedCopyWithImpl<
          _RetrieveChatsFromNewLocationStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function() refreshedLocation,
    required TResult Function(Position position)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(
            Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)
        chatsReceived,
  }) {
    return retrieveChatsFromNewLocationStarted(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function()? refreshedLocation,
    TResult Function(Position position)? retrieveChatsFromNewLocationStarted,
    TResult Function(Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)?
        chatsReceived,
    required TResult orElse(),
  }) {
    if (retrieveChatsFromNewLocationStarted != null) {
      return retrieveChatsFromNewLocationStarted(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_RefreshedLocation value) refreshedLocation,
    required TResult Function(_RetrieveChatsFromNewLocationStarted value)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
  }) {
    return retrieveChatsFromNewLocationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_RefreshedLocation value)? refreshedLocation,
    TResult Function(_RetrieveChatsFromNewLocationStarted value)?
        retrieveChatsFromNewLocationStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    required TResult orElse(),
  }) {
    if (retrieveChatsFromNewLocationStarted != null) {
      return retrieveChatsFromNewLocationStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveChatsFromNewLocationStarted
    implements LocationChatWatcherEvent {
  const factory _RetrieveChatsFromNewLocationStarted(Position position) =
      _$_RetrieveChatsFromNewLocationStarted;

  Position get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveChatsFromNewLocationStartedCopyWith<
          _RetrieveChatsFromNewLocationStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChatsReceivedCopyWith<$Res> {
  factory _$ChatsReceivedCopyWith(
          _ChatsReceived value, $Res Function(_ChatsReceived) then) =
      __$ChatsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<LocationChat>> failureOrChats,
      List<double> distances});
}

/// @nodoc
class __$ChatsReceivedCopyWithImpl<$Res>
    extends _$LocationChatWatcherEventCopyWithImpl<$Res>
    implements _$ChatsReceivedCopyWith<$Res> {
  __$ChatsReceivedCopyWithImpl(
      _ChatsReceived _value, $Res Function(_ChatsReceived) _then)
      : super(_value, (v) => _then(v as _ChatsReceived));

  @override
  _ChatsReceived get _value => super._value as _ChatsReceived;

  @override
  $Res call({
    Object? failureOrChats = freezed,
    Object? distances = freezed,
  }) {
    return _then(_ChatsReceived(
      failureOrChats == freezed
          ? _value.failureOrChats
          : failureOrChats // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<LocationChat>>,
      distances == freezed
          ? _value.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_ChatsReceived implements _ChatsReceived {
  const _$_ChatsReceived(this.failureOrChats, this.distances);

  @override
  final Either<DataFailure, List<LocationChat>> failureOrChats;
  @override
  final List<double> distances;

  @override
  String toString() {
    return 'LocationChatWatcherEvent.chatsReceived(failureOrChats: $failureOrChats, distances: $distances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatsReceived &&
            (identical(other.failureOrChats, failureOrChats) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrChats, failureOrChats)) &&
            (identical(other.distances, distances) ||
                const DeepCollectionEquality()
                    .equals(other.distances, distances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrChats) ^
      const DeepCollectionEquality().hash(distances);

  @JsonKey(ignore: true)
  @override
  _$ChatsReceivedCopyWith<_ChatsReceived> get copyWith =>
      __$ChatsReceivedCopyWithImpl<_ChatsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveChatsStarted,
    required TResult Function() refreshedLocation,
    required TResult Function(Position position)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(
            Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)
        chatsReceived,
  }) {
    return chatsReceived(failureOrChats, distances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveChatsStarted,
    TResult Function()? refreshedLocation,
    TResult Function(Position position)? retrieveChatsFromNewLocationStarted,
    TResult Function(Either<DataFailure, List<LocationChat>> failureOrChats,
            List<double> distances)?
        chatsReceived,
    required TResult orElse(),
  }) {
    if (chatsReceived != null) {
      return chatsReceived(failureOrChats, distances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveChatsStarted value) retrieveChatsStarted,
    required TResult Function(_RefreshedLocation value) refreshedLocation,
    required TResult Function(_RetrieveChatsFromNewLocationStarted value)
        retrieveChatsFromNewLocationStarted,
    required TResult Function(_ChatsReceived value) chatsReceived,
  }) {
    return chatsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveChatsStarted value)? retrieveChatsStarted,
    TResult Function(_RefreshedLocation value)? refreshedLocation,
    TResult Function(_RetrieveChatsFromNewLocationStarted value)?
        retrieveChatsFromNewLocationStarted,
    TResult Function(_ChatsReceived value)? chatsReceived,
    required TResult orElse(),
  }) {
    if (chatsReceived != null) {
      return chatsReceived(this);
    }
    return orElse();
  }
}

abstract class _ChatsReceived implements LocationChatWatcherEvent {
  const factory _ChatsReceived(
      Either<DataFailure, List<LocationChat>> failureOrChats,
      List<double> distances) = _$_ChatsReceived;

  Either<DataFailure, List<LocationChat>> get failureOrChats =>
      throw _privateConstructorUsedError;
  List<double> get distances => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChatsReceivedCopyWith<_ChatsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationChatWatcherStateTearOff {
  const _$LocationChatWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<LocationChat> chats, List<double> distances) {
    return _LoadSuccess(
      chats,
      distances,
    );
  }

  _LoadDataFailure loadDataFailure(DataFailure dataFailure) {
    return _LoadDataFailure(
      dataFailure,
    );
  }

  _LoadLocationFailure loadLocationFailure(LocationFailure locationFailure) {
    return _LoadLocationFailure(
      locationFailure,
    );
  }
}

/// @nodoc
const $LocationChatWatcherState = _$LocationChatWatcherStateTearOff();

/// @nodoc
mixin _$LocationChatWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatWatcherStateCopyWith<$Res> {
  factory $LocationChatWatcherStateCopyWith(LocationChatWatcherState value,
          $Res Function(LocationChatWatcherState) then) =
      _$LocationChatWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationChatWatcherStateCopyWithImpl<$Res>
    implements $LocationChatWatcherStateCopyWith<$Res> {
  _$LocationChatWatcherStateCopyWithImpl(this._value, this._then);

  final LocationChatWatcherState _value;
  // ignore: unused_field
  final $Res Function(LocationChatWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$LocationChatWatcherStateCopyWithImpl<$Res>
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
    return 'LocationChatWatcherState.initial()';
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
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
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
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationChatWatcherState {
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
    extends _$LocationChatWatcherStateCopyWithImpl<$Res>
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
    return 'LocationChatWatcherState.loadInProgress()';
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
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
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
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements LocationChatWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<LocationChat> chats, List<double> distances});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$LocationChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? chats = freezed,
    Object? distances = freezed,
  }) {
    return _then(_LoadSuccess(
      chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<LocationChat>,
      distances == freezed
          ? _value.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.chats, this.distances);

  @override
  final List<LocationChat> chats;
  @override
  final List<double> distances;

  @override
  String toString() {
    return 'LocationChatWatcherState.loadSuccess(chats: $chats, distances: $distances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)) &&
            (identical(other.distances, distances) ||
                const DeepCollectionEquality()
                    .equals(other.distances, distances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chats) ^
      const DeepCollectionEquality().hash(distances);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) {
    return loadSuccess(chats, distances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chats, distances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements LocationChatWatcherState {
  const factory _LoadSuccess(List<LocationChat> chats, List<double> distances) =
      _$_LoadSuccess;

  List<LocationChat> get chats => throw _privateConstructorUsedError;
  List<double> get distances => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadDataFailureCopyWith<$Res> {
  factory _$LoadDataFailureCopyWith(
          _LoadDataFailure value, $Res Function(_LoadDataFailure) then) =
      __$LoadDataFailureCopyWithImpl<$Res>;
  $Res call({DataFailure dataFailure});

  $DataFailureCopyWith<$Res> get dataFailure;
}

/// @nodoc
class __$LoadDataFailureCopyWithImpl<$Res>
    extends _$LocationChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadDataFailureCopyWith<$Res> {
  __$LoadDataFailureCopyWithImpl(
      _LoadDataFailure _value, $Res Function(_LoadDataFailure) _then)
      : super(_value, (v) => _then(v as _LoadDataFailure));

  @override
  _LoadDataFailure get _value => super._value as _LoadDataFailure;

  @override
  $Res call({
    Object? dataFailure = freezed,
  }) {
    return _then(_LoadDataFailure(
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

class _$_LoadDataFailure implements _LoadDataFailure {
  const _$_LoadDataFailure(this.dataFailure);

  @override
  final DataFailure dataFailure;

  @override
  String toString() {
    return 'LocationChatWatcherState.loadDataFailure(dataFailure: $dataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadDataFailure &&
            (identical(other.dataFailure, dataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.dataFailure, dataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadDataFailureCopyWith<_LoadDataFailure> get copyWith =>
      __$LoadDataFailureCopyWithImpl<_LoadDataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) {
    return loadDataFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadDataFailure != null) {
      return loadDataFailure(dataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) {
    return loadDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadDataFailure != null) {
      return loadDataFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadDataFailure implements LocationChatWatcherState {
  const factory _LoadDataFailure(DataFailure dataFailure) = _$_LoadDataFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadDataFailureCopyWith<_LoadDataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadLocationFailureCopyWith<$Res> {
  factory _$LoadLocationFailureCopyWith(_LoadLocationFailure value,
          $Res Function(_LoadLocationFailure) then) =
      __$LoadLocationFailureCopyWithImpl<$Res>;
  $Res call({LocationFailure locationFailure});

  $LocationFailureCopyWith<$Res> get locationFailure;
}

/// @nodoc
class __$LoadLocationFailureCopyWithImpl<$Res>
    extends _$LocationChatWatcherStateCopyWithImpl<$Res>
    implements _$LoadLocationFailureCopyWith<$Res> {
  __$LoadLocationFailureCopyWithImpl(
      _LoadLocationFailure _value, $Res Function(_LoadLocationFailure) _then)
      : super(_value, (v) => _then(v as _LoadLocationFailure));

  @override
  _LoadLocationFailure get _value => super._value as _LoadLocationFailure;

  @override
  $Res call({
    Object? locationFailure = freezed,
  }) {
    return _then(_LoadLocationFailure(
      locationFailure == freezed
          ? _value.locationFailure
          : locationFailure // ignore: cast_nullable_to_non_nullable
              as LocationFailure,
    ));
  }

  @override
  $LocationFailureCopyWith<$Res> get locationFailure {
    return $LocationFailureCopyWith<$Res>(_value.locationFailure, (value) {
      return _then(_value.copyWith(locationFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadLocationFailure implements _LoadLocationFailure {
  const _$_LoadLocationFailure(this.locationFailure);

  @override
  final LocationFailure locationFailure;

  @override
  String toString() {
    return 'LocationChatWatcherState.loadLocationFailure(locationFailure: $locationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadLocationFailure &&
            (identical(other.locationFailure, locationFailure) ||
                const DeepCollectionEquality()
                    .equals(other.locationFailure, locationFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadLocationFailureCopyWith<_LoadLocationFailure> get copyWith =>
      __$LoadLocationFailureCopyWithImpl<_LoadLocationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<LocationChat> chats, List<double> distances)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadDataFailure,
    required TResult Function(LocationFailure locationFailure)
        loadLocationFailure,
  }) {
    return loadLocationFailure(locationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<LocationChat> chats, List<double> distances)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadDataFailure,
    TResult Function(LocationFailure locationFailure)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadLocationFailure != null) {
      return loadLocationFailure(locationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadDataFailure value) loadDataFailure,
    required TResult Function(_LoadLocationFailure value) loadLocationFailure,
  }) {
    return loadLocationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadDataFailure value)? loadDataFailure,
    TResult Function(_LoadLocationFailure value)? loadLocationFailure,
    required TResult orElse(),
  }) {
    if (loadLocationFailure != null) {
      return loadLocationFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadLocationFailure implements LocationChatWatcherState {
  const factory _LoadLocationFailure(LocationFailure locationFailure) =
      _$_LoadLocationFailure;

  LocationFailure get locationFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadLocationFailureCopyWith<_LoadLocationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
