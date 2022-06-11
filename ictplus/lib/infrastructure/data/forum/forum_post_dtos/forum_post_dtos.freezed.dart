// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForumPostDto _$ForumPostDtoFromJson(Map<String, dynamic> json) {
  return _ForumPostDto.fromJson(json);
}

/// @nodoc
class _$ForumPostDtoTearOff {
  const _$ForumPostDtoTearOff();

  _ForumPostDto call(
      {required String forumId,
      required String title,
      required String tag,
      required String body,
      required int likes,
      required List<String> likedUserIds,
      required String posterUserId,
      required bool isAnon,
      required String photoUrl,
      required bool photoAdded,
      required bool pollAdded,
      required String timestamp,
      required List<String> keywords}) {
    return _ForumPostDto(
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
      keywords: keywords,
    );
  }

  ForumPostDto fromJson(Map<String, Object> json) {
    return ForumPostDto.fromJson(json);
  }
}

/// @nodoc
const $ForumPostDto = _$ForumPostDtoTearOff();

/// @nodoc
mixin _$ForumPostDto {
  String get forumId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  String get posterUserId => throw _privateConstructorUsedError;
  bool get isAnon => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  bool get photoAdded => throw _privateConstructorUsedError;
  bool get pollAdded => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForumPostDtoCopyWith<ForumPostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumPostDtoCopyWith<$Res> {
  factory $ForumPostDtoCopyWith(
          ForumPostDto value, $Res Function(ForumPostDto) then) =
      _$ForumPostDtoCopyWithImpl<$Res>;
  $Res call(
      {String forumId,
      String title,
      String tag,
      String body,
      int likes,
      List<String> likedUserIds,
      String posterUserId,
      bool isAnon,
      String photoUrl,
      bool photoAdded,
      bool pollAdded,
      String timestamp,
      List<String> keywords});
}

/// @nodoc
class _$ForumPostDtoCopyWithImpl<$Res> implements $ForumPostDtoCopyWith<$Res> {
  _$ForumPostDtoCopyWithImpl(this._value, this._then);

  final ForumPostDto _value;
  // ignore: unused_field
  final $Res Function(ForumPostDto) _then;

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
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
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
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ForumPostDtoCopyWith<$Res>
    implements $ForumPostDtoCopyWith<$Res> {
  factory _$ForumPostDtoCopyWith(
          _ForumPostDto value, $Res Function(_ForumPostDto) then) =
      __$ForumPostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String forumId,
      String title,
      String tag,
      String body,
      int likes,
      List<String> likedUserIds,
      String posterUserId,
      bool isAnon,
      String photoUrl,
      bool photoAdded,
      bool pollAdded,
      String timestamp,
      List<String> keywords});
}

/// @nodoc
class __$ForumPostDtoCopyWithImpl<$Res> extends _$ForumPostDtoCopyWithImpl<$Res>
    implements _$ForumPostDtoCopyWith<$Res> {
  __$ForumPostDtoCopyWithImpl(
      _ForumPostDto _value, $Res Function(_ForumPostDto) _then)
      : super(_value, (v) => _then(v as _ForumPostDto));

  @override
  _ForumPostDto get _value => super._value as _ForumPostDto;

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
    Object? keywords = freezed,
  }) {
    return _then(_ForumPostDto(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
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
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForumPostDto extends _ForumPostDto {
  const _$_ForumPostDto(
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
      required this.timestamp,
      required this.keywords})
      : super._();

  factory _$_ForumPostDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ForumPostDtoFromJson(json);

  @override
  final String forumId;
  @override
  final String title;
  @override
  final String tag;
  @override
  final String body;
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
  final List<String> keywords;

  @override
  String toString() {
    return 'ForumPostDto(forumId: $forumId, title: $title, tag: $tag, body: $body, likes: $likes, likedUserIds: $likedUserIds, posterUserId: $posterUserId, isAnon: $isAnon, photoUrl: $photoUrl, photoAdded: $photoAdded, pollAdded: $pollAdded, timestamp: $timestamp, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumPostDto &&
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
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.keywords, keywords) ||
                const DeepCollectionEquality()
                    .equals(other.keywords, keywords)));
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
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(keywords);

  @JsonKey(ignore: true)
  @override
  _$ForumPostDtoCopyWith<_ForumPostDto> get copyWith =>
      __$ForumPostDtoCopyWithImpl<_ForumPostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForumPostDtoToJson(this);
  }
}

abstract class _ForumPostDto extends ForumPostDto {
  const factory _ForumPostDto(
      {required String forumId,
      required String title,
      required String tag,
      required String body,
      required int likes,
      required List<String> likedUserIds,
      required String posterUserId,
      required bool isAnon,
      required String photoUrl,
      required bool photoAdded,
      required bool pollAdded,
      required String timestamp,
      required List<String> keywords}) = _$_ForumPostDto;
  const _ForumPostDto._() : super._();

  factory _ForumPostDto.fromJson(Map<String, dynamic> json) =
      _$_ForumPostDto.fromJson;

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
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
  List<String> get keywords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumPostDtoCopyWith<_ForumPostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
