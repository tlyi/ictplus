// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

  _Comment call(
      {required String forumId,
      required String commentId,
      required String userId,
      required CommentText commentText,
      required bool isAnon,
      required int likes,
      required List<String> likedUserIds,
      required String timestamp}) {
    return _Comment(
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
}

/// @nodoc
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  String get forumId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  CommentText get commentText => throw _privateConstructorUsedError;
  bool get isAnon => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get likedUserIds => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {String forumId,
      String commentId,
      String userId,
      CommentText commentText,
      bool isAnon,
      int likes,
      List<String> likedUserIds,
      String timestamp});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

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
              as CommentText,
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
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String forumId,
      String commentId,
      String userId,
      CommentText commentText,
      bool isAnon,
      int likes,
      List<String> likedUserIds,
      String timestamp});
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

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
    return _then(_Comment(
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
              as CommentText,
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

class _$_Comment extends _Comment {
  const _$_Comment(
      {required this.forumId,
      required this.commentId,
      required this.userId,
      required this.commentText,
      required this.isAnon,
      required this.likes,
      required this.likedUserIds,
      required this.timestamp})
      : super._();

  @override
  final String forumId;
  @override
  final String commentId;
  @override
  final String userId;
  @override
  final CommentText commentText;
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
    return 'Comment(forumId: $forumId, commentId: $commentId, userId: $userId, commentText: $commentText, isAnon: $isAnon, likes: $likes, likedUserIds: $likedUserIds, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
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
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);
}

abstract class _Comment extends Comment {
  const factory _Comment(
      {required String forumId,
      required String commentId,
      required String userId,
      required CommentText commentText,
      required bool isAnon,
      required int likes,
      required List<String> likedUserIds,
      required String timestamp}) = _$_Comment;
  const _Comment._() : super._();

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  String get commentId => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  CommentText get commentText => throw _privateConstructorUsedError;
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
  _$CommentCopyWith<_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
