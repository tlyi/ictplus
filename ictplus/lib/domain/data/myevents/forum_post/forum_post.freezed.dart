// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumPostTearOff {
  const _$ForumPostTearOff();

  _ForumPost call(
      {required String forumId,
      required Title title,
      required String tag,
      required Body body,
      required int likes,
      required List<String> likedUserIds,
      required String posterUserId,
      required bool isAnon,
      required String photoUrl,
      required bool photoAdded,
      required bool pollAdded,
      required String timestamp}) {
    return _ForumPost(
      forumId: forumId,
      title: title,
      tag: tag,
      body: body,
      likes: likes,
      likedUserIds: likedUserIds,
      posterUserId: posterUserId,
      isAnon: isAnon,
      photoUrl: photoUrl,
      photoAdded: photoAdded,
      pollAdded: pollAdded,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
const $ForumPost = _$ForumPostTearOff();

/// @nodoc
mixin _$ForumPost {
  String get forumId => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  Body get body => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  String get posterUserId => throw _privateConstructorUsedError;
  bool get isAnon => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  bool get photoAdded => throw _privateConstructorUsedError;
  bool get pollAdded => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumPostCopyWith<ForumPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumPostCopyWith<$Res> {
  factory $ForumPostCopyWith(ForumPost value, $Res Function(ForumPost) then) =
      _$ForumPostCopyWithImpl<$Res>;
  $Res call(
      {String forumId,
      Title title,
      String tag,
      Body body,
      int likes,
      List<String> likedUserIds,
      String posterUserId,
      bool isAnon,
      String photoUrl,
      bool photoAdded,
      bool pollAdded,
      String timestamp});
}

/// @nodoc
class _$ForumPostCopyWithImpl<$Res> implements $ForumPostCopyWith<$Res> {
  _$ForumPostCopyWithImpl(this._value, this._then);

  final ForumPost _value;
  // ignore: unused_field
  final $Res Function(ForumPost) _then;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? title = freezed,
    Object? tag = freezed,
    Object? body = freezed,
    Object? likes = freezed,
    Object? likedUserIds = freezed,
    Object? posterUserId = freezed,
    Object? isAnon = freezed,
    Object? photoUrl = freezed,
    Object? photoAdded = freezed,
    Object? pollAdded = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedUserIds: likedUserIds == freezed
          ? _value.likedUserIds
          : likedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posterUserId: posterUserId == freezed
          ? _value.posterUserId
          : posterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isAnon: isAnon == freezed
          ? _value.isAnon
          : isAnon // ignore: cast_nullable_to_non_nullable
              as bool,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photoAdded: photoAdded == freezed
          ? _value.photoAdded
          : photoAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pollAdded: pollAdded == freezed
          ? _value.pollAdded
          : pollAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ForumPostCopyWith<$Res> implements $ForumPostCopyWith<$Res> {
  factory _$ForumPostCopyWith(
          _ForumPost value, $Res Function(_ForumPost) then) =
      __$ForumPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String forumId,
      Title title,
      String tag,
      Body body,
      int likes,
      List<String> likedUserIds,
      String posterUserId,
      bool isAnon,
      String photoUrl,
      bool photoAdded,
      bool pollAdded,
      String timestamp});
}

/// @nodoc
class __$ForumPostCopyWithImpl<$Res> extends _$ForumPostCopyWithImpl<$Res>
    implements _$ForumPostCopyWith<$Res> {
  __$ForumPostCopyWithImpl(_ForumPost _value, $Res Function(_ForumPost) _then)
      : super(_value, (v) => _then(v as _ForumPost));

  @override
  _ForumPost get _value => super._value as _ForumPost;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? title = freezed,
    Object? tag = freezed,
    Object? body = freezed,
    Object? likes = freezed,
    Object? likedUserIds = freezed,
    Object? posterUserId = freezed,
    Object? isAnon = freezed,
    Object? photoUrl = freezed,
    Object? photoAdded = freezed,
    Object? pollAdded = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_ForumPost(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedUserIds: likedUserIds == freezed
          ? _value.likedUserIds
          : likedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posterUserId: posterUserId == freezed
          ? _value.posterUserId
          : posterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isAnon: isAnon == freezed
          ? _value.isAnon
          : isAnon // ignore: cast_nullable_to_non_nullable
              as bool,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photoAdded: photoAdded == freezed
          ? _value.photoAdded
          : photoAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pollAdded: pollAdded == freezed
          ? _value.pollAdded
          : pollAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForumPost extends _ForumPost {
  const _$_ForumPost(
      {required this.forumId,
      required this.title,
      required this.tag,
      required this.body,
      required this.likes,
      required this.likedUserIds,
      required this.posterUserId,
      required this.isAnon,
      required this.photoUrl,
      required this.photoAdded,
      required this.pollAdded,
      required this.timestamp})
      : super._();

  @override
  final String forumId;
  @override
  final Title title;
  @override
  final String tag;
  @override
  final Body body;
  @override
  final int likes;
  @override
  final List<String> likedUserIds;
  @override
  final String posterUserId;
  @override
  final bool isAnon;
  @override
  final String photoUrl;
  @override
  final bool photoAdded;
  @override
  final bool pollAdded;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'ForumPost(forumId: $forumId, title: $title, tag: $tag, body: $body, likes: $likes, likedUserIds: $likedUserIds, posterUserId: $posterUserId, isAnon: $isAnon, photoUrl: $photoUrl, photoAdded: $photoAdded, pollAdded: $pollAdded, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumPost &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.likedUserIds, likedUserIds) ||
                const DeepCollectionEquality()
                    .equals(other.likedUserIds, likedUserIds)) &&
            (identical(other.posterUserId, posterUserId) ||
                const DeepCollectionEquality()
                    .equals(other.posterUserId, posterUserId)) &&
            (identical(other.isAnon, isAnon) ||
                const DeepCollectionEquality().equals(other.isAnon, isAnon)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.photoAdded, photoAdded) ||
                const DeepCollectionEquality()
                    .equals(other.photoAdded, photoAdded)) &&
            (identical(other.pollAdded, pollAdded) ||
                const DeepCollectionEquality()
                    .equals(other.pollAdded, pollAdded)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(likedUserIds) ^
      const DeepCollectionEquality().hash(posterUserId) ^
      const DeepCollectionEquality().hash(isAnon) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(photoAdded) ^
      const DeepCollectionEquality().hash(pollAdded) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$ForumPostCopyWith<_ForumPost> get copyWith =>
      __$ForumPostCopyWithImpl<_ForumPost>(this, _$identity);
}

abstract class _ForumPost extends ForumPost {
  const factory _ForumPost(
      {required String forumId,
      required Title title,
      required String tag,
      required Body body,
      required int likes,
      required List<String> likedUserIds,
      required String posterUserId,
      required bool isAnon,
      required String photoUrl,
      required bool photoAdded,
      required bool pollAdded,
      required String timestamp}) = _$_ForumPost;
  const _ForumPost._() : super._();

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  Title get title => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  Body get body => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  @override
  String get posterUserId => throw _privateConstructorUsedError;
  @override
  bool get isAnon => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  bool get photoAdded => throw _privateConstructorUsedError;
  @override
  bool get pollAdded => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumPostCopyWith<_ForumPost> get copyWith =>
      throw _privateConstructorUsedError;
}
