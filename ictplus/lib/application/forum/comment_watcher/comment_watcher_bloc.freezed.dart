// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentWatcherEventTearOff {
  const _$CommentWatcherEventTearOff();

  _RetrieveCommentsStarted retrieveCommentsStarted(
      String forumId, String sortedBy) {
    return _RetrieveCommentsStarted(
      forumId,
      sortedBy,
    );
  }

  _CommentsReceived commentsReceived(
      Either<DataFailure, List<Comment>> failureOrComments) {
    return _CommentsReceived(
      failureOrComments,
    );
  }

  _RetrieveProfilesStarted retrieveProfilesStarted(List<Comment> comments) {
    return _RetrieveProfilesStarted(
      comments,
    );
  }
}

/// @nodoc
const $CommentWatcherEvent = _$CommentWatcherEventTearOff();

/// @nodoc
mixin _$CommentWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId, String sortedBy)
        retrieveCommentsStarted,
    required TResult Function(
            Either<DataFailure, List<Comment>> failureOrComments)
        commentsReceived,
    required TResult Function(List<Comment> comments) retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId, String sortedBy)? retrieveCommentsStarted,
    TResult Function(Either<DataFailure, List<Comment>> failureOrComments)?
        commentsReceived,
    TResult Function(List<Comment> comments)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentsStarted value)
        retrieveCommentsStarted,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentsStarted value)? retrieveCommentsStarted,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentWatcherEventCopyWith<$Res> {
  factory $CommentWatcherEventCopyWith(
          CommentWatcherEvent value, $Res Function(CommentWatcherEvent) then) =
      _$CommentWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentWatcherEventCopyWithImpl<$Res>
    implements $CommentWatcherEventCopyWith<$Res> {
  _$CommentWatcherEventCopyWithImpl(this._value, this._then);

  final CommentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveCommentsStartedCopyWith<$Res> {
  factory _$RetrieveCommentsStartedCopyWith(_RetrieveCommentsStarted value,
          $Res Function(_RetrieveCommentsStarted) then) =
      __$RetrieveCommentsStartedCopyWithImpl<$Res>;
  $Res call({String forumId, String sortedBy});
}

/// @nodoc
class __$RetrieveCommentsStartedCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveCommentsStartedCopyWith<$Res> {
  __$RetrieveCommentsStartedCopyWithImpl(_RetrieveCommentsStarted _value,
      $Res Function(_RetrieveCommentsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveCommentsStarted));

  @override
  _RetrieveCommentsStarted get _value =>
      super._value as _RetrieveCommentsStarted;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? sortedBy = freezed,
  }) {
    return _then(_RetrieveCommentsStarted(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveCommentsStarted implements _RetrieveCommentsStarted {
  const _$_RetrieveCommentsStarted(this.forumId, this.sortedBy);

  @override
  final String forumId;
  @override
  final String sortedBy;

  @override
  String toString() {
    return 'CommentWatcherEvent.retrieveCommentsStarted(forumId: $forumId, sortedBy: $sortedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveCommentsStarted &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(sortedBy);

  @JsonKey(ignore: true)
  @override
  _$RetrieveCommentsStartedCopyWith<_RetrieveCommentsStarted> get copyWith =>
      __$RetrieveCommentsStartedCopyWithImpl<_RetrieveCommentsStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId, String sortedBy)
        retrieveCommentsStarted,
    required TResult Function(
            Either<DataFailure, List<Comment>> failureOrComments)
        commentsReceived,
    required TResult Function(List<Comment> comments) retrieveProfilesStarted,
  }) {
    return retrieveCommentsStarted(forumId, sortedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId, String sortedBy)? retrieveCommentsStarted,
    TResult Function(Either<DataFailure, List<Comment>> failureOrComments)?
        commentsReceived,
    TResult Function(List<Comment> comments)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveCommentsStarted != null) {
      return retrieveCommentsStarted(forumId, sortedBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentsStarted value)
        retrieveCommentsStarted,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveCommentsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentsStarted value)? retrieveCommentsStarted,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveCommentsStarted != null) {
      return retrieveCommentsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveCommentsStarted implements CommentWatcherEvent {
  const factory _RetrieveCommentsStarted(String forumId, String sortedBy) =
      _$_RetrieveCommentsStarted;

  String get forumId => throw _privateConstructorUsedError;
  String get sortedBy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveCommentsStartedCopyWith<_RetrieveCommentsStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentsReceivedCopyWith<$Res> {
  factory _$CommentsReceivedCopyWith(
          _CommentsReceived value, $Res Function(_CommentsReceived) then) =
      __$CommentsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<Comment>> failureOrComments});
}

/// @nodoc
class __$CommentsReceivedCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$CommentsReceivedCopyWith<$Res> {
  __$CommentsReceivedCopyWithImpl(
      _CommentsReceived _value, $Res Function(_CommentsReceived) _then)
      : super(_value, (v) => _then(v as _CommentsReceived));

  @override
  _CommentsReceived get _value => super._value as _CommentsReceived;

  @override
  $Res call({
    Object? failureOrComments = freezed,
  }) {
    return _then(_CommentsReceived(
      failureOrComments == freezed
          ? _value.failureOrComments
          : failureOrComments // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Comment>>,
    ));
  }
}

/// @nodoc

class _$_CommentsReceived implements _CommentsReceived {
  const _$_CommentsReceived(this.failureOrComments);

  @override
  final Either<DataFailure, List<Comment>> failureOrComments;

  @override
  String toString() {
    return 'CommentWatcherEvent.commentsReceived(failureOrComments: $failureOrComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentsReceived &&
            (identical(other.failureOrComments, failureOrComments) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrComments, failureOrComments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrComments);

  @JsonKey(ignore: true)
  @override
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      __$CommentsReceivedCopyWithImpl<_CommentsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId, String sortedBy)
        retrieveCommentsStarted,
    required TResult Function(
            Either<DataFailure, List<Comment>> failureOrComments)
        commentsReceived,
    required TResult Function(List<Comment> comments) retrieveProfilesStarted,
  }) {
    return commentsReceived(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId, String sortedBy)? retrieveCommentsStarted,
    TResult Function(Either<DataFailure, List<Comment>> failureOrComments)?
        commentsReceived,
    TResult Function(List<Comment> comments)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(failureOrComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentsStarted value)
        retrieveCommentsStarted,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return commentsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentsStarted value)? retrieveCommentsStarted,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentsReceived implements CommentWatcherEvent {
  const factory _CommentsReceived(
          Either<DataFailure, List<Comment>> failureOrComments) =
      _$_CommentsReceived;

  Either<DataFailure, List<Comment>> get failureOrComments =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveProfilesStartedCopyWith<$Res> {
  factory _$RetrieveProfilesStartedCopyWith(_RetrieveProfilesStarted value,
          $Res Function(_RetrieveProfilesStarted) then) =
      __$RetrieveProfilesStartedCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$RetrieveProfilesStartedCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveProfilesStartedCopyWith<$Res> {
  __$RetrieveProfilesStartedCopyWithImpl(_RetrieveProfilesStarted _value,
      $Res Function(_RetrieveProfilesStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveProfilesStarted));

  @override
  _RetrieveProfilesStarted get _value =>
      super._value as _RetrieveProfilesStarted;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_RetrieveProfilesStarted(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_RetrieveProfilesStarted implements _RetrieveProfilesStarted {
  const _$_RetrieveProfilesStarted(this.comments);

  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'CommentWatcherEvent.retrieveProfilesStarted(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveProfilesStarted &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      __$RetrieveProfilesStartedCopyWithImpl<_RetrieveProfilesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String forumId, String sortedBy)
        retrieveCommentsStarted,
    required TResult Function(
            Either<DataFailure, List<Comment>> failureOrComments)
        commentsReceived,
    required TResult Function(List<Comment> comments) retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String forumId, String sortedBy)? retrieveCommentsStarted,
    TResult Function(Either<DataFailure, List<Comment>> failureOrComments)?
        commentsReceived,
    TResult Function(List<Comment> comments)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentsStarted value)
        retrieveCommentsStarted,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
  }) {
    return retrieveProfilesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentsStarted value)? retrieveCommentsStarted,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveProfilesStarted implements CommentWatcherEvent {
  const factory _RetrieveProfilesStarted(List<Comment> comments) =
      _$_RetrieveProfilesStarted;

  List<Comment> get comments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentWatcherStateTearOff {
  const _$CommentWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Comment> comments, List<Profile> profileList) {
    return _LoadSuccess(
      comments,
      profileList,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $CommentWatcherState = _$CommentWatcherStateTearOff();

/// @nodoc
mixin _$CommentWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Comment> comments, List<Profile> profileList)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Comment> comments, List<Profile> profileList)?
        loadSuccess,
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
abstract class $CommentWatcherStateCopyWith<$Res> {
  factory $CommentWatcherStateCopyWith(
          CommentWatcherState value, $Res Function(CommentWatcherState) then) =
      _$CommentWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentWatcherStateCopyWithImpl<$Res>
    implements $CommentWatcherStateCopyWith<$Res> {
  _$CommentWatcherStateCopyWithImpl(this._value, this._then);

  final CommentWatcherState _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
    return 'CommentWatcherState.initial()';
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
    required TResult Function(List<Comment> comments, List<Profile> profileList)
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
    TResult Function(List<Comment> comments, List<Profile> profileList)?
        loadSuccess,
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

abstract class _Initial implements CommentWatcherState {
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
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
    return 'CommentWatcherState.loadInProgress()';
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
    required TResult Function(List<Comment> comments, List<Profile> profileList)
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
    TResult Function(List<Comment> comments, List<Profile> profileList)?
        loadSuccess,
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

abstract class _LoadInProgress implements CommentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Comment> comments, List<Profile> profileList});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? comments = freezed,
    Object? profileList = freezed,
  }) {
    return _then(_LoadSuccess(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      profileList == freezed
          ? _value.profileList
          : profileList // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.comments, this.profileList);

  @override
  final List<Comment> comments;
  @override
  final List<Profile> profileList;

  @override
  String toString() {
    return 'CommentWatcherState.loadSuccess(comments: $comments, profileList: $profileList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.profileList, profileList) ||
                const DeepCollectionEquality()
                    .equals(other.profileList, profileList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(profileList);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Comment> comments, List<Profile> profileList)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(comments, profileList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Comment> comments, List<Profile> profileList)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(comments, profileList);
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

abstract class _LoadSuccess implements CommentWatcherState {
  const factory _LoadSuccess(
      List<Comment> comments, List<Profile> profileList) = _$_LoadSuccess;

  List<Comment> get comments => throw _privateConstructorUsedError;
  List<Profile> get profileList => throw _privateConstructorUsedError;
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
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
    return 'CommentWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(List<Comment> comments, List<Profile> profileList)
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
    TResult Function(List<Comment> comments, List<Profile> profileList)?
        loadSuccess,
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

abstract class _LoadFailure implements CommentWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
