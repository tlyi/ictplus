// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_post_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumPostWatcherEventTearOff {
  const _$ForumPostWatcherEventTearOff();

  _Started retrieveForumPostStarted(String forumId) {
    return _Started(
      forumId,
    );
  }

  _ForumPostReceived forumPostReceived(
      Either<DataFailure, ForumPost> failureOrForumPost) {
    return _ForumPostReceived(
      failureOrForumPost,
    );
  }

  _PosterProfileRetrieved posterProfileRetrieved(ForumPost forum) {
    return _PosterProfileRetrieved(
      forum,
    );
  }
}

/// @nodoc
const $ForumPostWatcherEvent = _$ForumPostWatcherEventTearOff();

/// @nodoc
mixin _$ForumPostWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId) retrieveForumPostStarted,
    required TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)
        forumPostReceived,
    required TResult Function(ForumPost forum) posterProfileRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId)? retrieveForumPostStarted,
    TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)?
        forumPostReceived,
    TResult Function(ForumPost forum)? posterProfileRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) retrieveForumPostStarted,
    required TResult Function(_ForumPostReceived value) forumPostReceived,
    required TResult Function(_PosterProfileRetrieved value)
        posterProfileRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? retrieveForumPostStarted,
    TResult Function(_ForumPostReceived value)? forumPostReceived,
    TResult Function(_PosterProfileRetrieved value)? posterProfileRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumPostWatcherEventCopyWith<$Res> {
  factory $ForumPostWatcherEventCopyWith(ForumPostWatcherEvent value,
          $Res Function(ForumPostWatcherEvent) then) =
      _$ForumPostWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumPostWatcherEventCopyWithImpl<$Res>
    implements $ForumPostWatcherEventCopyWith<$Res> {
  _$ForumPostWatcherEventCopyWithImpl(this._value, this._then);

  final ForumPostWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ForumPostWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String forumId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ForumPostWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? forumId = freezed,
  }) {
    return _then(_Started(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.forumId);

  @override
  final String forumId;

  @override
  String toString() {
    return 'ForumPostWatcherEvent.retrieveForumPostStarted(forumId: $forumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forumId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId) retrieveForumPostStarted,
    required TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)
        forumPostReceived,
    required TResult Function(ForumPost forum) posterProfileRetrieved,
  }) {
    return retrieveForumPostStarted(forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId)? retrieveForumPostStarted,
    TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)?
        forumPostReceived,
    TResult Function(ForumPost forum)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (retrieveForumPostStarted != null) {
      return retrieveForumPostStarted(forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) retrieveForumPostStarted,
    required TResult Function(_ForumPostReceived value) forumPostReceived,
    required TResult Function(_PosterProfileRetrieved value)
        posterProfileRetrieved,
  }) {
    return retrieveForumPostStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? retrieveForumPostStarted,
    TResult Function(_ForumPostReceived value)? forumPostReceived,
    TResult Function(_PosterProfileRetrieved value)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (retrieveForumPostStarted != null) {
      return retrieveForumPostStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForumPostWatcherEvent {
  const factory _Started(String forumId) = _$_Started;

  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForumPostReceivedCopyWith<$Res> {
  factory _$ForumPostReceivedCopyWith(
          _ForumPostReceived value, $Res Function(_ForumPostReceived) then) =
      __$ForumPostReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, ForumPost> failureOrForumPost});
}

/// @nodoc
class __$ForumPostReceivedCopyWithImpl<$Res>
    extends _$ForumPostWatcherEventCopyWithImpl<$Res>
    implements _$ForumPostReceivedCopyWith<$Res> {
  __$ForumPostReceivedCopyWithImpl(
      _ForumPostReceived _value, $Res Function(_ForumPostReceived) _then)
      : super(_value, (v) => _then(v as _ForumPostReceived));

  @override
  _ForumPostReceived get _value => super._value as _ForumPostReceived;

  @override
  $Res call({
    Object? failureOrForumPost = freezed,
  }) {
    return _then(_ForumPostReceived(
      failureOrForumPost == freezed
          ? _value.failureOrForumPost
          : failureOrForumPost // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, ForumPost>,
    ));
  }
}

/// @nodoc

class _$_ForumPostReceived implements _ForumPostReceived {
  const _$_ForumPostReceived(this.failureOrForumPost);

  @override
  final Either<DataFailure, ForumPost> failureOrForumPost;

  @override
  String toString() {
    return 'ForumPostWatcherEvent.forumPostReceived(failureOrForumPost: $failureOrForumPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumPostReceived &&
            (identical(other.failureOrForumPost, failureOrForumPost) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrForumPost, failureOrForumPost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrForumPost);

  @JsonKey(ignore: true)
  @override
  _$ForumPostReceivedCopyWith<_ForumPostReceived> get copyWith =>
      __$ForumPostReceivedCopyWithImpl<_ForumPostReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId) retrieveForumPostStarted,
    required TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)
        forumPostReceived,
    required TResult Function(ForumPost forum) posterProfileRetrieved,
  }) {
    return forumPostReceived(failureOrForumPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId)? retrieveForumPostStarted,
    TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)?
        forumPostReceived,
    TResult Function(ForumPost forum)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (forumPostReceived != null) {
      return forumPostReceived(failureOrForumPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) retrieveForumPostStarted,
    required TResult Function(_ForumPostReceived value) forumPostReceived,
    required TResult Function(_PosterProfileRetrieved value)
        posterProfileRetrieved,
  }) {
    return forumPostReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? retrieveForumPostStarted,
    TResult Function(_ForumPostReceived value)? forumPostReceived,
    TResult Function(_PosterProfileRetrieved value)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (forumPostReceived != null) {
      return forumPostReceived(this);
    }
    return orElse();
  }
}

abstract class _ForumPostReceived implements ForumPostWatcherEvent {
  const factory _ForumPostReceived(
      Either<DataFailure, ForumPost> failureOrForumPost) = _$_ForumPostReceived;

  Either<DataFailure, ForumPost> get failureOrForumPost =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumPostReceivedCopyWith<_ForumPostReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PosterProfileRetrievedCopyWith<$Res> {
  factory _$PosterProfileRetrievedCopyWith(_PosterProfileRetrieved value,
          $Res Function(_PosterProfileRetrieved) then) =
      __$PosterProfileRetrievedCopyWithImpl<$Res>;
  $Res call({ForumPost forum});

  $ForumPostCopyWith<$Res> get forum;
}

/// @nodoc
class __$PosterProfileRetrievedCopyWithImpl<$Res>
    extends _$ForumPostWatcherEventCopyWithImpl<$Res>
    implements _$PosterProfileRetrievedCopyWith<$Res> {
  __$PosterProfileRetrievedCopyWithImpl(_PosterProfileRetrieved _value,
      $Res Function(_PosterProfileRetrieved) _then)
      : super(_value, (v) => _then(v as _PosterProfileRetrieved));

  @override
  _PosterProfileRetrieved get _value => super._value as _PosterProfileRetrieved;

  @override
  $Res call({
    Object? forum = freezed,
  }) {
    return _then(_PosterProfileRetrieved(
      forum == freezed
          ? _value.forum
          : forum // ignore: cast_nullable_to_non_nullable
              as ForumPost,
    ));
  }

  @override
  $ForumPostCopyWith<$Res> get forum {
    return $ForumPostCopyWith<$Res>(_value.forum, (value) {
      return _then(_value.copyWith(forum: value));
    });
  }
}

/// @nodoc

class _$_PosterProfileRetrieved implements _PosterProfileRetrieved {
  const _$_PosterProfileRetrieved(this.forum);

  @override
  final ForumPost forum;

  @override
  String toString() {
    return 'ForumPostWatcherEvent.posterProfileRetrieved(forum: $forum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PosterProfileRetrieved &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forum);

  @JsonKey(ignore: true)
  @override
  _$PosterProfileRetrievedCopyWith<_PosterProfileRetrieved> get copyWith =>
      __$PosterProfileRetrievedCopyWithImpl<_PosterProfileRetrieved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId) retrieveForumPostStarted,
    required TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)
        forumPostReceived,
    required TResult Function(ForumPost forum) posterProfileRetrieved,
  }) {
    return posterProfileRetrieved(forum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId)? retrieveForumPostStarted,
    TResult Function(Either<DataFailure, ForumPost> failureOrForumPost)?
        forumPostReceived,
    TResult Function(ForumPost forum)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (posterProfileRetrieved != null) {
      return posterProfileRetrieved(forum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) retrieveForumPostStarted,
    required TResult Function(_ForumPostReceived value) forumPostReceived,
    required TResult Function(_PosterProfileRetrieved value)
        posterProfileRetrieved,
  }) {
    return posterProfileRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? retrieveForumPostStarted,
    TResult Function(_ForumPostReceived value)? forumPostReceived,
    TResult Function(_PosterProfileRetrieved value)? posterProfileRetrieved,
    required TResult orElse(),
  }) {
    if (posterProfileRetrieved != null) {
      return posterProfileRetrieved(this);
    }
    return orElse();
  }
}

abstract class _PosterProfileRetrieved implements ForumPostWatcherEvent {
  const factory _PosterProfileRetrieved(ForumPost forum) =
      _$_PosterProfileRetrieved;

  ForumPost get forum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PosterProfileRetrievedCopyWith<_PosterProfileRetrieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForumPostWatcherStateTearOff {
  const _$ForumPostWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(ForumPost forum, Profile posterProfile) {
    return _LoadSuccess(
      forum,
      posterProfile,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ForumPostWatcherState = _$ForumPostWatcherStateTearOff();

/// @nodoc
mixin _$ForumPostWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ForumPost forum, Profile posterProfile)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ForumPost forum, Profile posterProfile)? loadSuccess,
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
abstract class $ForumPostWatcherStateCopyWith<$Res> {
  factory $ForumPostWatcherStateCopyWith(ForumPostWatcherState value,
          $Res Function(ForumPostWatcherState) then) =
      _$ForumPostWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumPostWatcherStateCopyWithImpl<$Res>
    implements $ForumPostWatcherStateCopyWith<$Res> {
  _$ForumPostWatcherStateCopyWithImpl(this._value, this._then);

  final ForumPostWatcherState _value;
  // ignore: unused_field
  final $Res Function(ForumPostWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ForumPostWatcherStateCopyWithImpl<$Res>
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
    return 'ForumPostWatcherState.initial()';
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
    required TResult Function(ForumPost forum, Profile posterProfile)
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
    TResult Function(ForumPost forum, Profile posterProfile)? loadSuccess,
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

abstract class _Initial implements ForumPostWatcherState {
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
    extends _$ForumPostWatcherStateCopyWithImpl<$Res>
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
    return 'ForumPostWatcherState.loadInProgress()';
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
    required TResult Function(ForumPost forum, Profile posterProfile)
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
    TResult Function(ForumPost forum, Profile posterProfile)? loadSuccess,
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

abstract class _LoadInProgress implements ForumPostWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({ForumPost forum, Profile posterProfile});

  $ForumPostCopyWith<$Res> get forum;
  $ProfileCopyWith<$Res> get posterProfile;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ForumPostWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? forum = freezed,
    Object? posterProfile = freezed,
  }) {
    return _then(_LoadSuccess(
      forum == freezed
          ? _value.forum
          : forum // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      posterProfile == freezed
          ? _value.posterProfile
          : posterProfile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  $ForumPostCopyWith<$Res> get forum {
    return $ForumPostCopyWith<$Res>(_value.forum, (value) {
      return _then(_value.copyWith(forum: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get posterProfile {
    return $ProfileCopyWith<$Res>(_value.posterProfile, (value) {
      return _then(_value.copyWith(posterProfile: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.forum, this.posterProfile);

  @override
  final ForumPost forum;
  @override
  final Profile posterProfile;

  @override
  String toString() {
    return 'ForumPostWatcherState.loadSuccess(forum: $forum, posterProfile: $posterProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)) &&
            (identical(other.posterProfile, posterProfile) ||
                const DeepCollectionEquality()
                    .equals(other.posterProfile, posterProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forum) ^
      const DeepCollectionEquality().hash(posterProfile);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ForumPost forum, Profile posterProfile)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(forum, posterProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ForumPost forum, Profile posterProfile)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(forum, posterProfile);
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

abstract class _LoadSuccess implements ForumPostWatcherState {
  const factory _LoadSuccess(ForumPost forum, Profile posterProfile) =
      _$_LoadSuccess;

  ForumPost get forum => throw _privateConstructorUsedError;
  Profile get posterProfile => throw _privateConstructorUsedError;
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
    extends _$ForumPostWatcherStateCopyWithImpl<$Res>
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
    return 'ForumPostWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(ForumPost forum, Profile posterProfile)
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
    TResult Function(ForumPost forum, Profile posterProfile)? loadSuccess,
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

abstract class _LoadFailure implements ForumPostWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
