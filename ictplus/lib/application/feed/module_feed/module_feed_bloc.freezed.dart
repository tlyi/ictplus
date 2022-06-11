// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'module_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModuleFeedEventTearOff {
  const _$ModuleFeedEventTearOff();

  _RefreshFeed refreshFeed() {
    return const _RefreshFeed();
  }

  _RetrieveMorePosts retrieveMorePosts(List<ForumPost> oldPosts) {
    return _RetrieveMorePosts(
      oldPosts,
    );
  }

  _Liked liked(List<ForumPost> forums, int index, String userId) {
    return _Liked(
      forums,
      index,
      userId,
    );
  }

  _Unliked unliked(List<ForumPost> forums, int index, String userId) {
    return _Unliked(
      forums,
      index,
      userId,
    );
  }
}

/// @nodoc
const $ModuleFeedEvent = _$ModuleFeedEventTearOff();

/// @nodoc
mixin _$ModuleFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> oldPosts) retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> oldPosts)? retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleFeedEventCopyWith<$Res> {
  factory $ModuleFeedEventCopyWith(
          ModuleFeedEvent value, $Res Function(ModuleFeedEvent) then) =
      _$ModuleFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleFeedEventCopyWithImpl<$Res>
    implements $ModuleFeedEventCopyWith<$Res> {
  _$ModuleFeedEventCopyWithImpl(this._value, this._then);

  final ModuleFeedEvent _value;
  // ignore: unused_field
  final $Res Function(ModuleFeedEvent) _then;
}

/// @nodoc
abstract class _$RefreshFeedCopyWith<$Res> {
  factory _$RefreshFeedCopyWith(
          _RefreshFeed value, $Res Function(_RefreshFeed) then) =
      __$RefreshFeedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshFeedCopyWithImpl<$Res>
    extends _$ModuleFeedEventCopyWithImpl<$Res>
    implements _$RefreshFeedCopyWith<$Res> {
  __$RefreshFeedCopyWithImpl(
      _RefreshFeed _value, $Res Function(_RefreshFeed) _then)
      : super(_value, (v) => _then(v as _RefreshFeed));

  @override
  _RefreshFeed get _value => super._value as _RefreshFeed;
}

/// @nodoc

class _$_RefreshFeed implements _RefreshFeed {
  const _$_RefreshFeed();

  @override
  String toString() {
    return 'ModuleFeedEvent.refreshFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshFeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> oldPosts) retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return refreshFeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> oldPosts)? retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return refreshFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed(this);
    }
    return orElse();
  }
}

abstract class _RefreshFeed implements ModuleFeedEvent {
  const factory _RefreshFeed() = _$_RefreshFeed;
}

/// @nodoc
abstract class _$RetrieveMorePostsCopyWith<$Res> {
  factory _$RetrieveMorePostsCopyWith(
          _RetrieveMorePosts value, $Res Function(_RetrieveMorePosts) then) =
      __$RetrieveMorePostsCopyWithImpl<$Res>;
  $Res call({List<ForumPost> oldPosts});
}

/// @nodoc
class __$RetrieveMorePostsCopyWithImpl<$Res>
    extends _$ModuleFeedEventCopyWithImpl<$Res>
    implements _$RetrieveMorePostsCopyWith<$Res> {
  __$RetrieveMorePostsCopyWithImpl(
      _RetrieveMorePosts _value, $Res Function(_RetrieveMorePosts) _then)
      : super(_value, (v) => _then(v as _RetrieveMorePosts));

  @override
  _RetrieveMorePosts get _value => super._value as _RetrieveMorePosts;

  @override
  $Res call({
    Object? oldPosts = freezed,
  }) {
    return _then(_RetrieveMorePosts(
      oldPosts == freezed
          ? _value.oldPosts
          : oldPosts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMorePosts implements _RetrieveMorePosts {
  const _$_RetrieveMorePosts(this.oldPosts);

  @override
  final List<ForumPost> oldPosts;

  @override
  String toString() {
    return 'ModuleFeedEvent.retrieveMorePosts(oldPosts: $oldPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMorePosts &&
            (identical(other.oldPosts, oldPosts) ||
                const DeepCollectionEquality()
                    .equals(other.oldPosts, oldPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(oldPosts);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      __$RetrieveMorePostsCopyWithImpl<_RetrieveMorePosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> oldPosts) retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return retrieveMorePosts(oldPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> oldPosts)? retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (retrieveMorePosts != null) {
      return retrieveMorePosts(oldPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return retrieveMorePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (retrieveMorePosts != null) {
      return retrieveMorePosts(this);
    }
    return orElse();
  }
}

abstract class _RetrieveMorePosts implements ModuleFeedEvent {
  const factory _RetrieveMorePosts(List<ForumPost> oldPosts) =
      _$_RetrieveMorePosts;

  List<ForumPost> get oldPosts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums, int index, String userId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$ModuleFeedEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Liked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked(this.forums, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'ModuleFeedEvent.liked(forums: $forums, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> oldPosts) retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return liked(forums, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> oldPosts)? retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(forums, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ModuleFeedEvent {
  const factory _Liked(List<ForumPost> forums, int index, String userId) =
      _$_Liked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnlikedCopyWith<$Res> {
  factory _$UnlikedCopyWith(_Unliked value, $Res Function(_Unliked) then) =
      __$UnlikedCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums, int index, String userId});
}

/// @nodoc
class __$UnlikedCopyWithImpl<$Res> extends _$ModuleFeedEventCopyWithImpl<$Res>
    implements _$UnlikedCopyWith<$Res> {
  __$UnlikedCopyWithImpl(_Unliked _value, $Res Function(_Unliked) _then)
      : super(_value, (v) => _then(v as _Unliked));

  @override
  _Unliked get _value => super._value as _Unliked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Unliked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unliked implements _Unliked {
  const _$_Unliked(this.forums, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'ModuleFeedEvent.unliked(forums: $forums, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unliked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      __$UnlikedCopyWithImpl<_Unliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> oldPosts) retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return unliked(forums, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> oldPosts)? retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(forums, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class _Unliked implements ModuleFeedEvent {
  const factory _Unliked(List<ForumPost> forums, int index, String userId) =
      _$_Unliked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ModuleFeedStateTearOff {
  const _$ModuleFeedStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(
      List<ForumPost> forums, bool hasMore, bool isRetrieving) {
    return _LoadSuccess(
      forums,
      hasMore,
      isRetrieving,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ModuleFeedState = _$ModuleFeedStateTearOff();

/// @nodoc
mixin _$ModuleFeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ForumPost> forums, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving)?
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
abstract class $ModuleFeedStateCopyWith<$Res> {
  factory $ModuleFeedStateCopyWith(
          ModuleFeedState value, $Res Function(ModuleFeedState) then) =
      _$ModuleFeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleFeedStateCopyWithImpl<$Res>
    implements $ModuleFeedStateCopyWith<$Res> {
  _$ModuleFeedStateCopyWithImpl(this._value, this._then);

  final ModuleFeedState _value;
  // ignore: unused_field
  final $Res Function(ModuleFeedState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ModuleFeedStateCopyWithImpl<$Res>
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
    return 'ModuleFeedState.initial()';
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
    required TResult Function(
            List<ForumPost> forums, bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving)?
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

abstract class _Initial implements ModuleFeedState {
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
    extends _$ModuleFeedStateCopyWithImpl<$Res>
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
    return 'ModuleFeedState.loadInProgress()';
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
    required TResult Function(
            List<ForumPost> forums, bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving)?
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

abstract class _LoadInProgress implements ModuleFeedState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums, bool hasMore, bool isRetrieving});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ModuleFeedStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? forums = freezed,
    Object? hasMore = freezed,
    Object? isRetrieving = freezed,
  }) {
    return _then(_LoadSuccess(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRetrieving == freezed
          ? _value.isRetrieving
          : isRetrieving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.forums, this.hasMore, this.isRetrieving);

  @override
  final List<ForumPost> forums;
  @override
  final bool hasMore;
  @override
  final bool isRetrieving;

  @override
  String toString() {
    return 'ModuleFeedState.loadSuccess(forums: $forums, hasMore: $hasMore, isRetrieving: $isRetrieving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.isRetrieving, isRetrieving) ||
                const DeepCollectionEquality()
                    .equals(other.isRetrieving, isRetrieving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(isRetrieving);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ForumPost> forums, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(forums, hasMore, isRetrieving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(forums, hasMore, isRetrieving);
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

abstract class _LoadSuccess implements ModuleFeedState {
  const factory _LoadSuccess(
      List<ForumPost> forums, bool hasMore, bool isRetrieving) = _$_LoadSuccess;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isRetrieving => throw _privateConstructorUsedError;
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
    extends _$ModuleFeedStateCopyWithImpl<$Res>
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
    return 'ModuleFeedState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(
            List<ForumPost> forums, bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving)?
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

abstract class _LoadFailure implements ModuleFeedState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
