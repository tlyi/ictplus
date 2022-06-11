// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendFeedEventTearOff {
  const _$FriendFeedEventTearOff();

  _RefreshFeed refreshFeed() {
    return const _RefreshFeed();
  }

  _GetProfiles getProfiles(List<ForumPost> posts) {
    return _GetProfiles(
      posts,
    );
  }

  _Liked liked(List<ForumPost> forums, List<Profile> profiles, int index,
      String userId) {
    return _Liked(
      forums,
      profiles,
      index,
      userId,
    );
  }

  _Unliked unliked(List<ForumPost> forums, List<Profile> profiles, int index,
      String userId) {
    return _Unliked(
      forums,
      profiles,
      index,
      userId,
    );
  }

  _RetrieveMorePosts retrieveMorePosts(
      List<ForumPost> oldPosts, List<Profile> oldProfiles) {
    return _RetrieveMorePosts(
      oldPosts,
      oldProfiles,
    );
  }

  _RetrieveMoreProfiles retrieveMoreProfiles(List<ForumPost> newPosts,
      List<ForumPost> updatedPosts, List<Profile> oldProfiles) {
    return _RetrieveMoreProfiles(
      newPosts,
      updatedPosts,
      oldProfiles,
    );
  }
}

/// @nodoc
const $FriendFeedEvent = _$FriendFeedEventTearOff();

/// @nodoc
mixin _$FriendFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendFeedEventCopyWith<$Res> {
  factory $FriendFeedEventCopyWith(
          FriendFeedEvent value, $Res Function(FriendFeedEvent) then) =
      _$FriendFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendFeedEventCopyWithImpl<$Res>
    implements $FriendFeedEventCopyWith<$Res> {
  _$FriendFeedEventCopyWithImpl(this._value, this._then);

  final FriendFeedEvent _value;
  // ignore: unused_field
  final $Res Function(FriendFeedEvent) _then;
}

/// @nodoc
abstract class _$RefreshFeedCopyWith<$Res> {
  factory _$RefreshFeedCopyWith(
          _RefreshFeed value, $Res Function(_RefreshFeed) then) =
      __$RefreshFeedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshFeedCopyWithImpl<$Res>
    extends _$FriendFeedEventCopyWithImpl<$Res>
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
    return 'FriendFeedEvent.refreshFeed()';
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
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return refreshFeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
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
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return refreshFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed(this);
    }
    return orElse();
  }
}

abstract class _RefreshFeed implements FriendFeedEvent {
  const factory _RefreshFeed() = _$_RefreshFeed;
}

/// @nodoc
abstract class _$GetProfilesCopyWith<$Res> {
  factory _$GetProfilesCopyWith(
          _GetProfiles value, $Res Function(_GetProfiles) then) =
      __$GetProfilesCopyWithImpl<$Res>;
  $Res call({List<ForumPost> posts});
}

/// @nodoc
class __$GetProfilesCopyWithImpl<$Res>
    extends _$FriendFeedEventCopyWithImpl<$Res>
    implements _$GetProfilesCopyWith<$Res> {
  __$GetProfilesCopyWithImpl(
      _GetProfiles _value, $Res Function(_GetProfiles) _then)
      : super(_value, (v) => _then(v as _GetProfiles));

  @override
  _GetProfiles get _value => super._value as _GetProfiles;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_GetProfiles(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
    ));
  }
}

/// @nodoc

class _$_GetProfiles implements _GetProfiles {
  const _$_GetProfiles(this.posts);

  @override
  final List<ForumPost> posts;

  @override
  String toString() {
    return 'FriendFeedEvent.getProfiles(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProfiles &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  _$GetProfilesCopyWith<_GetProfiles> get copyWith =>
      __$GetProfilesCopyWithImpl<_GetProfiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return getProfiles(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (getProfiles != null) {
      return getProfiles(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return getProfiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (getProfiles != null) {
      return getProfiles(this);
    }
    return orElse();
  }
}

abstract class _GetProfiles implements FriendFeedEvent {
  const factory _GetProfiles(List<ForumPost> posts) = _$_GetProfiles;

  List<ForumPost> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetProfilesCopyWith<_GetProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call(
      {List<ForumPost> forums,
      List<Profile> profiles,
      int index,
      String userId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$FriendFeedEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? profiles = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Liked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
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
  const _$_Liked(this.forums, this.profiles, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final List<Profile> profiles;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'FriendFeedEvent.liked(forums: $forums, profiles: $profiles, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(profiles) ^
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
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return liked(forums, profiles, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(forums, profiles, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements FriendFeedEvent {
  const factory _Liked(List<ForumPost> forums, List<Profile> profiles,
      int index, String userId) = _$_Liked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnlikedCopyWith<$Res> {
  factory _$UnlikedCopyWith(_Unliked value, $Res Function(_Unliked) then) =
      __$UnlikedCopyWithImpl<$Res>;
  $Res call(
      {List<ForumPost> forums,
      List<Profile> profiles,
      int index,
      String userId});
}

/// @nodoc
class __$UnlikedCopyWithImpl<$Res> extends _$FriendFeedEventCopyWithImpl<$Res>
    implements _$UnlikedCopyWith<$Res> {
  __$UnlikedCopyWithImpl(_Unliked _value, $Res Function(_Unliked) _then)
      : super(_value, (v) => _then(v as _Unliked));

  @override
  _Unliked get _value => super._value as _Unliked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? profiles = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Unliked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
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
  const _$_Unliked(this.forums, this.profiles, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final List<Profile> profiles;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'FriendFeedEvent.unliked(forums: $forums, profiles: $profiles, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unliked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(profiles) ^
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
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return unliked(forums, profiles, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(forums, profiles, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class _Unliked implements FriendFeedEvent {
  const factory _Unliked(List<ForumPost> forums, List<Profile> profiles,
      int index, String userId) = _$_Unliked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveMorePostsCopyWith<$Res> {
  factory _$RetrieveMorePostsCopyWith(
          _RetrieveMorePosts value, $Res Function(_RetrieveMorePosts) then) =
      __$RetrieveMorePostsCopyWithImpl<$Res>;
  $Res call({List<ForumPost> oldPosts, List<Profile> oldProfiles});
}

/// @nodoc
class __$RetrieveMorePostsCopyWithImpl<$Res>
    extends _$FriendFeedEventCopyWithImpl<$Res>
    implements _$RetrieveMorePostsCopyWith<$Res> {
  __$RetrieveMorePostsCopyWithImpl(
      _RetrieveMorePosts _value, $Res Function(_RetrieveMorePosts) _then)
      : super(_value, (v) => _then(v as _RetrieveMorePosts));

  @override
  _RetrieveMorePosts get _value => super._value as _RetrieveMorePosts;

  @override
  $Res call({
    Object? oldPosts = freezed,
    Object? oldProfiles = freezed,
  }) {
    return _then(_RetrieveMorePosts(
      oldPosts == freezed
          ? _value.oldPosts
          : oldPosts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      oldProfiles == freezed
          ? _value.oldProfiles
          : oldProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMorePosts implements _RetrieveMorePosts {
  const _$_RetrieveMorePosts(this.oldPosts, this.oldProfiles);

  @override
  final List<ForumPost> oldPosts;
  @override
  final List<Profile> oldProfiles;

  @override
  String toString() {
    return 'FriendFeedEvent.retrieveMorePosts(oldPosts: $oldPosts, oldProfiles: $oldProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMorePosts &&
            (identical(other.oldPosts, oldPosts) ||
                const DeepCollectionEquality()
                    .equals(other.oldPosts, oldPosts)) &&
            (identical(other.oldProfiles, oldProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.oldProfiles, oldProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldPosts) ^
      const DeepCollectionEquality().hash(oldProfiles);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      __$RetrieveMorePostsCopyWithImpl<_RetrieveMorePosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return retrieveMorePosts(oldPosts, oldProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (retrieveMorePosts != null) {
      return retrieveMorePosts(oldPosts, oldProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return retrieveMorePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (retrieveMorePosts != null) {
      return retrieveMorePosts(this);
    }
    return orElse();
  }
}

abstract class _RetrieveMorePosts implements FriendFeedEvent {
  const factory _RetrieveMorePosts(
          List<ForumPost> oldPosts, List<Profile> oldProfiles) =
      _$_RetrieveMorePosts;

  List<ForumPost> get oldPosts => throw _privateConstructorUsedError;
  List<Profile> get oldProfiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveMorePostsCopyWith<_RetrieveMorePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveMoreProfilesCopyWith<$Res> {
  factory _$RetrieveMoreProfilesCopyWith(_RetrieveMoreProfiles value,
          $Res Function(_RetrieveMoreProfiles) then) =
      __$RetrieveMoreProfilesCopyWithImpl<$Res>;
  $Res call(
      {List<ForumPost> newPosts,
      List<ForumPost> updatedPosts,
      List<Profile> oldProfiles});
}

/// @nodoc
class __$RetrieveMoreProfilesCopyWithImpl<$Res>
    extends _$FriendFeedEventCopyWithImpl<$Res>
    implements _$RetrieveMoreProfilesCopyWith<$Res> {
  __$RetrieveMoreProfilesCopyWithImpl(
      _RetrieveMoreProfiles _value, $Res Function(_RetrieveMoreProfiles) _then)
      : super(_value, (v) => _then(v as _RetrieveMoreProfiles));

  @override
  _RetrieveMoreProfiles get _value => super._value as _RetrieveMoreProfiles;

  @override
  $Res call({
    Object? newPosts = freezed,
    Object? updatedPosts = freezed,
    Object? oldProfiles = freezed,
  }) {
    return _then(_RetrieveMoreProfiles(
      newPosts == freezed
          ? _value.newPosts
          : newPosts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      updatedPosts == freezed
          ? _value.updatedPosts
          : updatedPosts // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      oldProfiles == freezed
          ? _value.oldProfiles
          : oldProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMoreProfiles implements _RetrieveMoreProfiles {
  const _$_RetrieveMoreProfiles(
      this.newPosts, this.updatedPosts, this.oldProfiles);

  @override
  final List<ForumPost> newPosts;
  @override
  final List<ForumPost> updatedPosts;
  @override
  final List<Profile> oldProfiles;

  @override
  String toString() {
    return 'FriendFeedEvent.retrieveMoreProfiles(newPosts: $newPosts, updatedPosts: $updatedPosts, oldProfiles: $oldProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMoreProfiles &&
            (identical(other.newPosts, newPosts) ||
                const DeepCollectionEquality()
                    .equals(other.newPosts, newPosts)) &&
            (identical(other.updatedPosts, updatedPosts) ||
                const DeepCollectionEquality()
                    .equals(other.updatedPosts, updatedPosts)) &&
            (identical(other.oldProfiles, oldProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.oldProfiles, oldProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newPosts) ^
      const DeepCollectionEquality().hash(updatedPosts) ^
      const DeepCollectionEquality().hash(oldProfiles);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMoreProfilesCopyWith<_RetrieveMoreProfiles> get copyWith =>
      __$RetrieveMoreProfilesCopyWithImpl<_RetrieveMoreProfiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshFeed,
    required TResult Function(List<ForumPost> posts) getProfiles,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            int index, String userId)
        unliked,
    required TResult Function(
            List<ForumPost> oldPosts, List<Profile> oldProfiles)
        retrieveMorePosts,
    required TResult Function(List<ForumPost> newPosts,
            List<ForumPost> updatedPosts, List<Profile> oldProfiles)
        retrieveMoreProfiles,
  }) {
    return retrieveMoreProfiles(newPosts, updatedPosts, oldProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshFeed,
    TResult Function(List<ForumPost> posts)? getProfiles,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        liked,
    TResult Function(List<ForumPost> forums, List<Profile> profiles, int index,
            String userId)?
        unliked,
    TResult Function(List<ForumPost> oldPosts, List<Profile> oldProfiles)?
        retrieveMorePosts,
    TResult Function(List<ForumPost> newPosts, List<ForumPost> updatedPosts,
            List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (retrieveMoreProfiles != null) {
      return retrieveMoreProfiles(newPosts, updatedPosts, oldProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshFeed value) refreshFeed,
    required TResult Function(_GetProfiles value) getProfiles,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_RetrieveMorePosts value) retrieveMorePosts,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
  }) {
    return retrieveMoreProfiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshFeed value)? refreshFeed,
    TResult Function(_GetProfiles value)? getProfiles,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_RetrieveMorePosts value)? retrieveMorePosts,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    required TResult orElse(),
  }) {
    if (retrieveMoreProfiles != null) {
      return retrieveMoreProfiles(this);
    }
    return orElse();
  }
}

abstract class _RetrieveMoreProfiles implements FriendFeedEvent {
  const factory _RetrieveMoreProfiles(
      List<ForumPost> newPosts,
      List<ForumPost> updatedPosts,
      List<Profile> oldProfiles) = _$_RetrieveMoreProfiles;

  List<ForumPost> get newPosts => throw _privateConstructorUsedError;
  List<ForumPost> get updatedPosts => throw _privateConstructorUsedError;
  List<Profile> get oldProfiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveMoreProfilesCopyWith<_RetrieveMoreProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendFeedStateTearOff {
  const _$FriendFeedStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<ForumPost> forums, List<Profile> profiles,
      bool hasMore, bool isRetrieving) {
    return _LoadSuccess(
      forums,
      profiles,
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
const $FriendFeedState = _$FriendFeedStateTearOff();

/// @nodoc
mixin _$FriendFeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
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
abstract class $FriendFeedStateCopyWith<$Res> {
  factory $FriendFeedStateCopyWith(
          FriendFeedState value, $Res Function(FriendFeedState) then) =
      _$FriendFeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendFeedStateCopyWithImpl<$Res>
    implements $FriendFeedStateCopyWith<$Res> {
  _$FriendFeedStateCopyWithImpl(this._value, this._then);

  final FriendFeedState _value;
  // ignore: unused_field
  final $Res Function(FriendFeedState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FriendFeedStateCopyWithImpl<$Res>
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
    return 'FriendFeedState.initial()';
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
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
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

abstract class _Initial implements FriendFeedState {
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
    extends _$FriendFeedStateCopyWithImpl<$Res>
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
    return 'FriendFeedState.loadInProgress()';
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
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
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

abstract class _LoadInProgress implements FriendFeedState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<ForumPost> forums,
      List<Profile> profiles,
      bool hasMore,
      bool isRetrieving});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FriendFeedStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? forums = freezed,
    Object? profiles = freezed,
    Object? hasMore = freezed,
    Object? isRetrieving = freezed,
  }) {
    return _then(_LoadSuccess(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
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
  const _$_LoadSuccess(
      this.forums, this.profiles, this.hasMore, this.isRetrieving);

  @override
  final List<ForumPost> forums;
  @override
  final List<Profile> profiles;
  @override
  final bool hasMore;
  @override
  final bool isRetrieving;

  @override
  String toString() {
    return 'FriendFeedState.loadSuccess(forums: $forums, profiles: $profiles, hasMore: $hasMore, isRetrieving: $isRetrieving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
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
      const DeepCollectionEquality().hash(profiles) ^
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
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(forums, profiles, hasMore, isRetrieving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(forums, profiles, hasMore, isRetrieving);
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

abstract class _LoadSuccess implements FriendFeedState {
  const factory _LoadSuccess(List<ForumPost> forums, List<Profile> profiles,
      bool hasMore, bool isRetrieving) = _$_LoadSuccess;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
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
    extends _$FriendFeedStateCopyWithImpl<$Res>
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
    return 'FriendFeedState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)
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
    TResult Function(List<ForumPost> forums, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
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

abstract class _LoadFailure implements FriendFeedState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
