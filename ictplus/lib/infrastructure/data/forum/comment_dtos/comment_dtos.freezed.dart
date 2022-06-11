// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

  _CommentDto call(
      {required String forumId,
      required String commentId,
      required String userId,
      required String commentText,
      required bool isAnon,
      required int likes,
      required List<String> likedUserIds,
      required String timestamp}) {
    return _CommentDto(
      forumId: forumId,
      commentId: commentId,
      userId: userId,
      commentText: commentText,
      isAnon: isAnon,
      likes: likes,
      likedUserIds: likedUserIds,
      timestamp: timestamp,
    );
  }

  CommentDto fromJson(Map<String, Object> json) {
    return CommentDto.fromJson(json);
  }
}

/// @nodoc
const $CommentDto = _$CommentDtoTearOff();

/// @nodoc
mixin _$CommentDto {
  String get forumId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get commentText => throw _privateConstructorUsedError;
  bool get isAnon => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {String forumId,
      String commentId,
      String userId,
      String commentText,
      bool isAnon,
      int likes,
      List<String> likedUserIds,
      String timestamp});
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res> implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  final CommentDto _value;
  // ignore: unused_field
  final $Res Function(CommentDto) _then;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? commentId = freezed,
    Object? userId = freezed,
    Object? commentText = freezed,
    Object? isAnon = freezed,
    Object? likes = freezed,
    Object? likedUserIds = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      commentText: commentText == freezed
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      isAnon: isAnon == freezed
          ? _value.isAnon
          : isAnon // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedUserIds: likedUserIds == freezed
          ? _value.likedUserIds
          : likedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(
          _CommentDto value, $Res Function(_CommentDto) then) =
      __$CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String forumId,
      String commentId,
      String userId,
      String commentText,
      bool isAnon,
      int likes,
      List<String> likedUserIds,
      String timestamp});
}

/// @nodoc
class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res>
    implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(
      _CommentDto _value, $Res Function(_CommentDto) _then)
      : super(_value, (v) => _then(v as _CommentDto));

  @override
  _CommentDto get _value => super._value as _CommentDto;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? commentId = freezed,
    Object? userId = freezed,
    Object? commentText = freezed,
    Object? isAnon = freezed,
    Object? likes = freezed,
    Object? likedUserIds = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_CommentDto(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      commentText: commentText == freezed
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      isAnon: isAnon == freezed
          ? _value.isAnon
          : isAnon // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedUserIds: likedUserIds == freezed
          ? _value.likedUserIds
          : likedUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto(
      {required this.forumId,
      required this.commentId,
      required this.userId,
      required this.commentText,
      required this.isAnon,
      required this.likes,
      required this.likedUserIds,
      required this.timestamp})
      : super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDtoFromJson(json);

  @override
  final String forumId;
  @override
  final String commentId;
  @override
  final String userId;
  @override
  final String commentText;
  @override
  final bool isAnon;
  @override
  final int likes;
  @override
  final List<String> likedUserIds;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'CommentDto(forumId: $forumId, commentId: $commentId, userId: $userId, commentText: $commentText, isAnon: $isAnon, likes: $likes, likedUserIds: $likedUserIds, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDto &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.commentText, commentText) ||
                const DeepCollectionEquality()
                    .equals(other.commentText, commentText)) &&
            (identical(other.isAnon, isAnon) ||
                const DeepCollectionEquality().equals(other.isAnon, isAnon)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.likedUserIds, likedUserIds) ||
                const DeepCollectionEquality()
                    .equals(other.likedUserIds, likedUserIds)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(commentId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(commentText) ^
      const DeepCollectionEquality().hash(isAnon) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(likedUserIds) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  const factory _CommentDto(
      {required String forumId,
      required String commentId,
      required String userId,
      required String commentText,
      required bool isAnon,
      required int likes,
      required List<String> likedUserIds,
      required String timestamp}) = _$_CommentDto;
  const _CommentDto._() : super._();

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  String get commentId => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get commentText => throw _privateConstructorUsedError;
  @override
  bool get isAnon => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
