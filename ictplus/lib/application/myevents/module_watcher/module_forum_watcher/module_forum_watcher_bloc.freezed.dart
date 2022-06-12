// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'module_forum_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModuleForumWatcherEventTearOff {
  const _$ModuleForumWatcherEventTearOff();

  _RefreshFeed refreshFeed(String moduleCode, String sortedBy) {
    return _RefreshFeed(
      moduleCode,
      sortedBy,
    );
  }

  _RetrieveMorePosts retrieveMorePosts(
      String moduleCode, String sortedBy, List<ForumPost> oldPosts) {
    return _RetrieveMorePosts(
      moduleCode,
      sortedBy,
      oldPosts,
    );
  }

  _Liked liked(List<ForumPost> forums, int index, String userId,
      String moduleCode, String sortedBy) {
    return _Liked(
      forums,
      index,
      userId,
      moduleCode,
      sortedBy,
    );
  }

  _Unliked unliked(List<ForumPost> forums, int index, String userId,
      String moduleCode, String sortedBy) {
    return _Unliked(
      forums,
      index,
      userId,
      moduleCode,
      sortedBy,
    );
  }
}

/// @nodoc
const $ModuleForumWatcherEvent = _$ModuleForumWatcherEventTearOff();

/// @nodoc
mixin _$ModuleForumWatcherEvent {
  String get moduleCode => throw _privateConstructorUsedError;
  String get sortedBy => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moduleCode, String sortedBy) refreshFeed,
    required TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moduleCode, String sortedBy)? refreshFeed,
    TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        liked,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        unliked,
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

  @JsonKey(ignore: true)
  $ModuleForumWatcherEventCopyWith<ModuleForumWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleForumWatcherEventCopyWith<$Res> {
  factory $ModuleForumWatcherEventCopyWith(ModuleForumWatcherEvent value,
          $Res Function(ModuleForumWatcherEvent) then) =
      _$ModuleForumWatcherEventCopyWithImpl<$Res>;
  $Res call({String moduleCode, String sortedBy});
}

/// @nodoc
class _$ModuleForumWatcherEventCopyWithImpl<$Res>
    implements $ModuleForumWatcherEventCopyWith<$Res> {
  _$ModuleForumWatcherEventCopyWithImpl(this._value, this._then);

  final ModuleForumWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ModuleForumWatcherEvent) _then;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
  }) {
    return _then(_value.copyWith(
      moduleCode: moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy: sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RefreshFeedCopyWith<$Res>
    implements $ModuleForumWatcherEventCopyWith<$Res> {
  factory _$RefreshFeedCopyWith(
          _RefreshFeed value, $Res Function(_RefreshFeed) then) =
      __$RefreshFeedCopyWithImpl<$Res>;
  @override
  $Res call({String moduleCode, String sortedBy});
}

/// @nodoc
class __$RefreshFeedCopyWithImpl<$Res>
    extends _$ModuleForumWatcherEventCopyWithImpl<$Res>
    implements _$RefreshFeedCopyWith<$Res> {
  __$RefreshFeedCopyWithImpl(
      _RefreshFeed _value, $Res Function(_RefreshFeed) _then)
      : super(_value, (v) => _then(v as _RefreshFeed));

  @override
  _RefreshFeed get _value => super._value as _RefreshFeed;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
  }) {
    return _then(_RefreshFeed(
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshFeed implements _RefreshFeed {
  const _$_RefreshFeed(this.moduleCode, this.sortedBy);

  @override
  final String moduleCode;
  @override
  final String sortedBy;

  @override
  String toString() {
    return 'ModuleForumWatcherEvent.refreshFeed(moduleCode: $moduleCode, sortedBy: $sortedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshFeed &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(sortedBy);

  @JsonKey(ignore: true)
  @override
  _$RefreshFeedCopyWith<_RefreshFeed> get copyWith =>
      __$RefreshFeedCopyWithImpl<_RefreshFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moduleCode, String sortedBy) refreshFeed,
    required TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        unliked,
  }) {
    return refreshFeed(moduleCode, sortedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moduleCode, String sortedBy)? refreshFeed,
    TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        liked,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        unliked,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed(moduleCode, sortedBy);
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

abstract class _RefreshFeed implements ModuleForumWatcherEvent {
  const factory _RefreshFeed(String moduleCode, String sortedBy) =
      _$_RefreshFeed;

  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get sortedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RefreshFeedCopyWith<_RefreshFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveMorePostsCopyWith<$Res>
    implements $ModuleForumWatcherEventCopyWith<$Res> {
  factory _$RetrieveMorePostsCopyWith(
          _RetrieveMorePosts value, $Res Function(_RetrieveMorePosts) then) =
      __$RetrieveMorePostsCopyWithImpl<$Res>;
  @override
  $Res call({String moduleCode, String sortedBy, List<ForumPost> oldPosts});
}

/// @nodoc
class __$RetrieveMorePostsCopyWithImpl<$Res>
    extends _$ModuleForumWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveMorePostsCopyWith<$Res> {
  __$RetrieveMorePostsCopyWithImpl(
      _RetrieveMorePosts _value, $Res Function(_RetrieveMorePosts) _then)
      : super(_value, (v) => _then(v as _RetrieveMorePosts));

  @override
  _RetrieveMorePosts get _value => super._value as _RetrieveMorePosts;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
    Object? oldPosts = freezed,
  }) {
    return _then(_RetrieveMorePosts(
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
      oldPosts == freezed
          ? _value.oldPosts
          : oldPosts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMorePosts implements _RetrieveMorePosts {
  const _$_RetrieveMorePosts(this.moduleCode, this.sortedBy, this.oldPosts);

  @override
  final String moduleCode;
  @override
  final String sortedBy;
  @override
  final List<ForumPost> oldPosts;

  @override
  String toString() {
    return 'ModuleForumWatcherEvent.retrieveMorePosts(moduleCode: $moduleCode, sortedBy: $sortedBy, oldPosts: $oldPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMorePosts &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)) &&
            (identical(other.oldPosts, oldPosts) ||
                const DeepCollectionEquality()
                    .equals(other.oldPosts, oldPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(sortedBy) ^
      const DeepCollectionEquality().hash(oldPosts);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      __$RetrieveMorePostsCopyWithImpl<_RetrieveMorePosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moduleCode, String sortedBy) refreshFeed,
    required TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        unliked,
  }) {
    return retrieveMorePosts(moduleCode, sortedBy, oldPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moduleCode, String sortedBy)? refreshFeed,
    TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        liked,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        unliked,
    required TResult orElse(),
  }) {
    if (retrieveMorePosts != null) {
      return retrieveMorePosts(moduleCode, sortedBy, oldPosts);
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

abstract class _RetrieveMorePosts implements ModuleForumWatcherEvent {
  const factory _RetrieveMorePosts(
          String moduleCode, String sortedBy, List<ForumPost> oldPosts) =
      _$_RetrieveMorePosts;

  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get sortedBy => throw _privateConstructorUsedError;
  List<ForumPost> get oldPosts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res>
    implements $ModuleForumWatcherEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ForumPost> forums,
      int index,
      String userId,
      String moduleCode,
      String sortedBy});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res>
    extends _$ModuleForumWatcherEventCopyWithImpl<$Res>
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
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
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
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked(
      this.forums, this.index, this.userId, this.moduleCode, this.sortedBy);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;
  @override
  final String moduleCode;
  @override
  final String sortedBy;

  @override
  String toString() {
    return 'ModuleForumWatcherEvent.liked(forums: $forums, index: $index, userId: $userId, moduleCode: $moduleCode, sortedBy: $sortedBy)';
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
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(sortedBy);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moduleCode, String sortedBy) refreshFeed,
    required TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        unliked,
  }) {
    return liked(forums, index, userId, moduleCode, sortedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moduleCode, String sortedBy)? refreshFeed,
    TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        liked,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(forums, index, userId, moduleCode, sortedBy);
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

abstract class _Liked implements ModuleForumWatcherEvent {
  const factory _Liked(List<ForumPost> forums, int index, String userId,
      String moduleCode, String sortedBy) = _$_Liked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get sortedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnlikedCopyWith<$Res>
    implements $ModuleForumWatcherEventCopyWith<$Res> {
  factory _$UnlikedCopyWith(_Unliked value, $Res Function(_Unliked) then) =
      __$UnlikedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ForumPost> forums,
      int index,
      String userId,
      String moduleCode,
      String sortedBy});
}

/// @nodoc
class __$UnlikedCopyWithImpl<$Res>
    extends _$ModuleForumWatcherEventCopyWithImpl<$Res>
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
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
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
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unliked implements _Unliked {
  const _$_Unliked(
      this.forums, this.index, this.userId, this.moduleCode, this.sortedBy);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;
  @override
  final String moduleCode;
  @override
  final String sortedBy;

  @override
  String toString() {
    return 'ModuleForumWatcherEvent.unliked(forums: $forums, index: $index, userId: $userId, moduleCode: $moduleCode, sortedBy: $sortedBy)';
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
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(sortedBy);

  @JsonKey(ignore: true)
  @override
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      __$UnlikedCopyWithImpl<_Unliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moduleCode, String sortedBy) refreshFeed,
    required TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)
        unliked,
  }) {
    return unliked(forums, index, userId, moduleCode, sortedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moduleCode, String sortedBy)? refreshFeed,
    TResult Function(
            String moduleCode, String sortedBy, List<ForumPost> oldPosts)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        liked,
    TResult Function(List<ForumPost> forums, int index, String userId,
            String moduleCode, String sortedBy)?
        unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(forums, index, userId, moduleCode, sortedBy);
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

abstract class _Unliked implements ModuleForumWatcherEvent {
  const factory _Unliked(List<ForumPost> forums, int index, String userId,
      String moduleCode, String sortedBy) = _$_Unliked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get sortedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ModuleForumWatcherStateTearOff {
  const _$ModuleForumWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<ForumPost> forums, bool hasMore,
      bool isRetrieving, String moduleCode, String sortedBy) {
    return _LoadSuccess(
      forums,
      hasMore,
      isRetrieving,
      moduleCode,
      sortedBy,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ModuleForumWatcherState = _$ModuleForumWatcherStateTearOff();

/// @nodoc
mixin _$ModuleForumWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums, bool hasMore,
            bool isRetrieving, String moduleCode, String sortedBy)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving,
            String moduleCode, String sortedBy)?
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
abstract class $ModuleForumWatcherStateCopyWith<$Res> {
  factory $ModuleForumWatcherStateCopyWith(ModuleForumWatcherState value,
          $Res Function(ModuleForumWatcherState) then) =
      _$ModuleForumWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleForumWatcherStateCopyWithImpl<$Res>
    implements $ModuleForumWatcherStateCopyWith<$Res> {
  _$ModuleForumWatcherStateCopyWithImpl(this._value, this._then);

  final ModuleForumWatcherState _value;
  // ignore: unused_field
  final $Res Function(ModuleForumWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ModuleForumWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleForumWatcherState.initial()';
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
    required TResult Function(List<ForumPost> forums, bool hasMore,
            bool isRetrieving, String moduleCode, String sortedBy)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving,
            String moduleCode, String sortedBy)?
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

abstract class _Initial implements ModuleForumWatcherState {
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
    extends _$ModuleForumWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleForumWatcherState.loadInProgress()';
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
    required TResult Function(List<ForumPost> forums, bool hasMore,
            bool isRetrieving, String moduleCode, String sortedBy)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving,
            String moduleCode, String sortedBy)?
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

abstract class _LoadInProgress implements ModuleForumWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<ForumPost> forums,
      bool hasMore,
      bool isRetrieving,
      String moduleCode,
      String sortedBy});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ModuleForumWatcherStateCopyWithImpl<$Res>
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
    Object? moduleCode = freezed,
    Object? sortedBy = freezed,
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
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      sortedBy == freezed
          ? _value.sortedBy
          : sortedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.forums, this.hasMore, this.isRetrieving,
      this.moduleCode, this.sortedBy);

  @override
  final List<ForumPost> forums;
  @override
  final bool hasMore;
  @override
  final bool isRetrieving;
  @override
  final String moduleCode;
  @override
  final String sortedBy;

  @override
  String toString() {
    return 'ModuleForumWatcherState.loadSuccess(forums: $forums, hasMore: $hasMore, isRetrieving: $isRetrieving, moduleCode: $moduleCode, sortedBy: $sortedBy)';
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
                    .equals(other.isRetrieving, isRetrieving)) &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.sortedBy, sortedBy) ||
                const DeepCollectionEquality()
                    .equals(other.sortedBy, sortedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(isRetrieving) ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(sortedBy);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums, bool hasMore,
            bool isRetrieving, String moduleCode, String sortedBy)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(forums, hasMore, isRetrieving, moduleCode, sortedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving,
            String moduleCode, String sortedBy)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(forums, hasMore, isRetrieving, moduleCode, sortedBy);
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

abstract class _LoadSuccess implements ModuleForumWatcherState {
  const factory _LoadSuccess(List<ForumPost> forums, bool hasMore,
      bool isRetrieving, String moduleCode, String sortedBy) = _$_LoadSuccess;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isRetrieving => throw _privateConstructorUsedError;
  String get moduleCode => throw _privateConstructorUsedError;
  String get sortedBy => throw _privateConstructorUsedError;
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
    extends _$ModuleForumWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleForumWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(List<ForumPost> forums, bool hasMore,
            bool isRetrieving, String moduleCode, String sortedBy)
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
    TResult Function(List<ForumPost> forums, bool hasMore, bool isRetrieving,
            String moduleCode, String sortedBy)?
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

abstract class _LoadFailure implements ModuleForumWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
