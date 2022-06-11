// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumActorEventTearOff {
  const _$ForumActorEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ForumLiked forumLiked(ForumPost forum) {
    return _ForumLiked(
      forum,
    );
  }

  _ForumUnliked forumUnliked(String forumId) {
    return _ForumUnliked(
      forumId,
    );
  }

  _Voted voted(String forumId, int index) {
    return _Voted(
      forumId,
      index,
    );
  }

  _CommentChanged commentChanged(String commentStr) {
    return _CommentChanged(
      commentStr,
    );
  }

  _AnonStateChanged anonStateChanged() {
    return const _AnonStateChanged();
  }

  _CommentCreated commentCreated(ForumPost forum) {
    return _CommentCreated(
      forum,
    );
  }

  _CommentLiked commentLiked(ForumPost forum, Comment comment) {
    return _CommentLiked(
      forum,
      comment,
    );
  }

  _CommentUnliked commentUnliked(String forumId, String commentId) {
    return _CommentUnliked(
      forumId,
      commentId,
    );
  }

  _ForumDeleted forumDeleted(ForumPost forum) {
    return _ForumDeleted(
      forum,
    );
  }
}

/// @nodoc
const $ForumActorEvent = _$ForumActorEventTearOff();

/// @nodoc
mixin _$ForumActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumActorEventCopyWith<$Res> {
  factory $ForumActorEventCopyWith(
          ForumActorEvent value, $Res Function(ForumActorEvent) then) =
      _$ForumActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumActorEventCopyWithImpl<$Res>
    implements $ForumActorEventCopyWith<$Res> {
  _$ForumActorEventCopyWithImpl(this._value, this._then);

  final ForumActorEvent _value;
  // ignore: unused_field
  final $Res Function(ForumActorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ForumActorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForumActorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ForumLikedCopyWith<$Res> {
  factory _$ForumLikedCopyWith(
          _ForumLiked value, $Res Function(_ForumLiked) then) =
      __$ForumLikedCopyWithImpl<$Res>;
  $Res call({ForumPost forum});

  $ForumPostCopyWith<$Res> get forum;
}

/// @nodoc
class __$ForumLikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$ForumLikedCopyWith<$Res> {
  __$ForumLikedCopyWithImpl(
      _ForumLiked _value, $Res Function(_ForumLiked) _then)
      : super(_value, (v) => _then(v as _ForumLiked));

  @override
  _ForumLiked get _value => super._value as _ForumLiked;

  @override
  $Res call({
    Object? forum = freezed,
  }) {
    return _then(_ForumLiked(
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

class _$_ForumLiked implements _ForumLiked {
  const _$_ForumLiked(this.forum);

  @override
  final ForumPost forum;

  @override
  String toString() {
    return 'ForumActorEvent.forumLiked(forum: $forum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumLiked &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forum);

  @JsonKey(ignore: true)
  @override
  _$ForumLikedCopyWith<_ForumLiked> get copyWith =>
      __$ForumLikedCopyWithImpl<_ForumLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return forumLiked(forum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumLiked != null) {
      return forumLiked(forum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return forumLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumLiked != null) {
      return forumLiked(this);
    }
    return orElse();
  }
}

abstract class _ForumLiked implements ForumActorEvent {
  const factory _ForumLiked(ForumPost forum) = _$_ForumLiked;

  ForumPost get forum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumLikedCopyWith<_ForumLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForumUnlikedCopyWith<$Res> {
  factory _$ForumUnlikedCopyWith(
          _ForumUnliked value, $Res Function(_ForumUnliked) then) =
      __$ForumUnlikedCopyWithImpl<$Res>;
  $Res call({String forumId});
}

/// @nodoc
class __$ForumUnlikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$ForumUnlikedCopyWith<$Res> {
  __$ForumUnlikedCopyWithImpl(
      _ForumUnliked _value, $Res Function(_ForumUnliked) _then)
      : super(_value, (v) => _then(v as _ForumUnliked));

  @override
  _ForumUnliked get _value => super._value as _ForumUnliked;

  @override
  $Res call({
    Object? forumId = freezed,
  }) {
    return _then(_ForumUnliked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForumUnliked implements _ForumUnliked {
  const _$_ForumUnliked(this.forumId);

  @override
  final String forumId;

  @override
  String toString() {
    return 'ForumActorEvent.forumUnliked(forumId: $forumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumUnliked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forumId);

  @JsonKey(ignore: true)
  @override
  _$ForumUnlikedCopyWith<_ForumUnliked> get copyWith =>
      __$ForumUnlikedCopyWithImpl<_ForumUnliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return forumUnliked(forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumUnliked != null) {
      return forumUnliked(forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return forumUnliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumUnliked != null) {
      return forumUnliked(this);
    }
    return orElse();
  }
}

abstract class _ForumUnliked implements ForumActorEvent {
  const factory _ForumUnliked(String forumId) = _$_ForumUnliked;

  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumUnlikedCopyWith<_ForumUnliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VotedCopyWith<$Res> {
  factory _$VotedCopyWith(_Voted value, $Res Function(_Voted) then) =
      __$VotedCopyWithImpl<$Res>;
  $Res call({String forumId, int index});
}

/// @nodoc
class __$VotedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$VotedCopyWith<$Res> {
  __$VotedCopyWithImpl(_Voted _value, $Res Function(_Voted) _then)
      : super(_value, (v) => _then(v as _Voted));

  @override
  _Voted get _value => super._value as _Voted;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? index = freezed,
  }) {
    return _then(_Voted(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Voted implements _Voted {
  const _$_Voted(this.forumId, this.index);

  @override
  final String forumId;
  @override
  final int index;

  @override
  String toString() {
    return 'ForumActorEvent.voted(forumId: $forumId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Voted &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$VotedCopyWith<_Voted> get copyWith =>
      __$VotedCopyWithImpl<_Voted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return voted(forumId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (voted != null) {
      return voted(forumId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return voted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (voted != null) {
      return voted(this);
    }
    return orElse();
  }
}

abstract class _Voted implements ForumActorEvent {
  const factory _Voted(String forumId, int index) = _$_Voted;

  String get forumId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VotedCopyWith<_Voted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentChangedCopyWith<$Res> {
  factory _$CommentChangedCopyWith(
          _CommentChanged value, $Res Function(_CommentChanged) then) =
      __$CommentChangedCopyWithImpl<$Res>;
  $Res call({String commentStr});
}

/// @nodoc
class __$CommentChangedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentChangedCopyWith<$Res> {
  __$CommentChangedCopyWithImpl(
      _CommentChanged _value, $Res Function(_CommentChanged) _then)
      : super(_value, (v) => _then(v as _CommentChanged));

  @override
  _CommentChanged get _value => super._value as _CommentChanged;

  @override
  $Res call({
    Object? commentStr = freezed,
  }) {
    return _then(_CommentChanged(
      commentStr == freezed
          ? _value.commentStr
          : commentStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentChanged implements _CommentChanged {
  const _$_CommentChanged(this.commentStr);

  @override
  final String commentStr;

  @override
  String toString() {
    return 'ForumActorEvent.commentChanged(commentStr: $commentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentChanged &&
            (identical(other.commentStr, commentStr) ||
                const DeepCollectionEquality()
                    .equals(other.commentStr, commentStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentStr);

  @JsonKey(ignore: true)
  @override
  _$CommentChangedCopyWith<_CommentChanged> get copyWith =>
      __$CommentChangedCopyWithImpl<_CommentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return commentChanged(commentStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(commentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentChanged implements ForumActorEvent {
  const factory _CommentChanged(String commentStr) = _$_CommentChanged;

  String get commentStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentChangedCopyWith<_CommentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AnonStateChangedCopyWith<$Res> {
  factory _$AnonStateChangedCopyWith(
          _AnonStateChanged value, $Res Function(_AnonStateChanged) then) =
      __$AnonStateChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AnonStateChangedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$AnonStateChangedCopyWith<$Res> {
  __$AnonStateChangedCopyWithImpl(
      _AnonStateChanged _value, $Res Function(_AnonStateChanged) _then)
      : super(_value, (v) => _then(v as _AnonStateChanged));

  @override
  _AnonStateChanged get _value => super._value as _AnonStateChanged;
}

/// @nodoc

class _$_AnonStateChanged implements _AnonStateChanged {
  const _$_AnonStateChanged();

  @override
  String toString() {
    return 'ForumActorEvent.anonStateChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AnonStateChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return anonStateChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (anonStateChanged != null) {
      return anonStateChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return anonStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (anonStateChanged != null) {
      return anonStateChanged(this);
    }
    return orElse();
  }
}

abstract class _AnonStateChanged implements ForumActorEvent {
  const factory _AnonStateChanged() = _$_AnonStateChanged;
}

/// @nodoc
abstract class _$CommentCreatedCopyWith<$Res> {
  factory _$CommentCreatedCopyWith(
          _CommentCreated value, $Res Function(_CommentCreated) then) =
      __$CommentCreatedCopyWithImpl<$Res>;
  $Res call({ForumPost forum});

  $ForumPostCopyWith<$Res> get forum;
}

/// @nodoc
class __$CommentCreatedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentCreatedCopyWith<$Res> {
  __$CommentCreatedCopyWithImpl(
      _CommentCreated _value, $Res Function(_CommentCreated) _then)
      : super(_value, (v) => _then(v as _CommentCreated));

  @override
  _CommentCreated get _value => super._value as _CommentCreated;

  @override
  $Res call({
    Object? forum = freezed,
  }) {
    return _then(_CommentCreated(
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

class _$_CommentCreated implements _CommentCreated {
  const _$_CommentCreated(this.forum);

  @override
  final ForumPost forum;

  @override
  String toString() {
    return 'ForumActorEvent.commentCreated(forum: $forum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentCreated &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forum);

  @JsonKey(ignore: true)
  @override
  _$CommentCreatedCopyWith<_CommentCreated> get copyWith =>
      __$CommentCreatedCopyWithImpl<_CommentCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return commentCreated(forum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentCreated != null) {
      return commentCreated(forum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentCreated != null) {
      return commentCreated(this);
    }
    return orElse();
  }
}

abstract class _CommentCreated implements ForumActorEvent {
  const factory _CommentCreated(ForumPost forum) = _$_CommentCreated;

  ForumPost get forum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentCreatedCopyWith<_CommentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentLikedCopyWith<$Res> {
  factory _$CommentLikedCopyWith(
          _CommentLiked value, $Res Function(_CommentLiked) then) =
      __$CommentLikedCopyWithImpl<$Res>;
  $Res call({ForumPost forum, Comment comment});

  $ForumPostCopyWith<$Res> get forum;
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$CommentLikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentLikedCopyWith<$Res> {
  __$CommentLikedCopyWithImpl(
      _CommentLiked _value, $Res Function(_CommentLiked) _then)
      : super(_value, (v) => _then(v as _CommentLiked));

  @override
  _CommentLiked get _value => super._value as _CommentLiked;

  @override
  $Res call({
    Object? forum = freezed,
    Object? comment = freezed,
  }) {
    return _then(_CommentLiked(
      forum == freezed
          ? _value.forum
          : forum // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  $ForumPostCopyWith<$Res> get forum {
    return $ForumPostCopyWith<$Res>(_value.forum, (value) {
      return _then(_value.copyWith(forum: value));
    });
  }

  @override
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$_CommentLiked implements _CommentLiked {
  const _$_CommentLiked(this.forum, this.comment);

  @override
  final ForumPost forum;
  @override
  final Comment comment;

  @override
  String toString() {
    return 'ForumActorEvent.commentLiked(forum: $forum, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentLiked &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forum) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$CommentLikedCopyWith<_CommentLiked> get copyWith =>
      __$CommentLikedCopyWithImpl<_CommentLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return commentLiked(forum, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentLiked != null) {
      return commentLiked(forum, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentLiked != null) {
      return commentLiked(this);
    }
    return orElse();
  }
}

abstract class _CommentLiked implements ForumActorEvent {
  const factory _CommentLiked(ForumPost forum, Comment comment) =
      _$_CommentLiked;

  ForumPost get forum => throw _privateConstructorUsedError;
  Comment get comment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentLikedCopyWith<_CommentLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentUnlikedCopyWith<$Res> {
  factory _$CommentUnlikedCopyWith(
          _CommentUnliked value, $Res Function(_CommentUnliked) then) =
      __$CommentUnlikedCopyWithImpl<$Res>;
  $Res call({String forumId, String commentId});
}

/// @nodoc
class __$CommentUnlikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentUnlikedCopyWith<$Res> {
  __$CommentUnlikedCopyWithImpl(
      _CommentUnliked _value, $Res Function(_CommentUnliked) _then)
      : super(_value, (v) => _then(v as _CommentUnliked));

  @override
  _CommentUnliked get _value => super._value as _CommentUnliked;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? commentId = freezed,
  }) {
    return _then(_CommentUnliked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentUnliked implements _CommentUnliked {
  const _$_CommentUnliked(this.forumId, this.commentId);

  @override
  final String forumId;
  @override
  final String commentId;

  @override
  String toString() {
    return 'ForumActorEvent.commentUnliked(forumId: $forumId, commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentUnliked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(commentId);

  @JsonKey(ignore: true)
  @override
  _$CommentUnlikedCopyWith<_CommentUnliked> get copyWith =>
      __$CommentUnlikedCopyWithImpl<_CommentUnliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return commentUnliked(forumId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentUnliked != null) {
      return commentUnliked(forumId, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentUnliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentUnliked != null) {
      return commentUnliked(this);
    }
    return orElse();
  }
}

abstract class _CommentUnliked implements ForumActorEvent {
  const factory _CommentUnliked(String forumId, String commentId) =
      _$_CommentUnliked;

  String get forumId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentUnlikedCopyWith<_CommentUnliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForumDeletedCopyWith<$Res> {
  factory _$ForumDeletedCopyWith(
          _ForumDeleted value, $Res Function(_ForumDeleted) then) =
      __$ForumDeletedCopyWithImpl<$Res>;
  $Res call({ForumPost forum});

  $ForumPostCopyWith<$Res> get forum;
}

/// @nodoc
class __$ForumDeletedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$ForumDeletedCopyWith<$Res> {
  __$ForumDeletedCopyWithImpl(
      _ForumDeleted _value, $Res Function(_ForumDeleted) _then)
      : super(_value, (v) => _then(v as _ForumDeleted));

  @override
  _ForumDeleted get _value => super._value as _ForumDeleted;

  @override
  $Res call({
    Object? forum = freezed,
  }) {
    return _then(_ForumDeleted(
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

class _$_ForumDeleted implements _ForumDeleted {
  const _$_ForumDeleted(this.forum);

  @override
  final ForumPost forum;

  @override
  String toString() {
    return 'ForumActorEvent.forumDeleted(forum: $forum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumDeleted &&
            (identical(other.forum, forum) ||
                const DeepCollectionEquality().equals(other.forum, forum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forum);

  @JsonKey(ignore: true)
  @override
  _$ForumDeletedCopyWith<_ForumDeleted> get copyWith =>
      __$ForumDeletedCopyWithImpl<_ForumDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ForumPost forum) forumLiked,
    required TResult Function(String forumId) forumUnliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(ForumPost forum) commentCreated,
    required TResult Function(ForumPost forum, Comment comment) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(ForumPost forum) forumDeleted,
  }) {
    return forumDeleted(forum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ForumPost forum)? forumLiked,
    TResult Function(String forumId)? forumUnliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(ForumPost forum)? commentCreated,
    TResult Function(ForumPost forum, Comment comment)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(ForumPost forum)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumDeleted != null) {
      return forumDeleted(forum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForumLiked value) forumLiked,
    required TResult Function(_ForumUnliked value) forumUnliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return forumDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForumLiked value)? forumLiked,
    TResult Function(_ForumUnliked value)? forumUnliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumDeleted != null) {
      return forumDeleted(this);
    }
    return orElse();
  }
}

abstract class _ForumDeleted implements ForumActorEvent {
  const factory _ForumDeleted(ForumPost forum) = _$_ForumDeleted;

  ForumPost get forum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumDeletedCopyWith<_ForumDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForumActorStateTearOff {
  const _$ForumActorStateTearOff();

  _ForumActorState call(
      {required String userId,
      required Comment comment,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading,
      required bool showErrorMessages}) {
    return _ForumActorState(
      userId: userId,
      comment: comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption,
      isLoading: isLoading,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
const $ForumActorState = _$ForumActorStateTearOff();

/// @nodoc
mixin _$ForumActorState {
  String get userId => throw _privateConstructorUsedError;
  Comment get comment => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumActorStateCopyWith<ForumActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumActorStateCopyWith<$Res> {
  factory $ForumActorStateCopyWith(
          ForumActorState value, $Res Function(ForumActorState) then) =
      _$ForumActorStateCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      Comment comment,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading,
      bool showErrorMessages});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$ForumActorStateCopyWithImpl<$Res>
    implements $ForumActorStateCopyWith<$Res> {
  _$ForumActorStateCopyWithImpl(this._value, this._then);

  final ForumActorState _value;
  // ignore: unused_field
  final $Res Function(ForumActorState) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? comment = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$ForumActorStateCopyWith<$Res>
    implements $ForumActorStateCopyWith<$Res> {
  factory _$ForumActorStateCopyWith(
          _ForumActorState value, $Res Function(_ForumActorState) then) =
      __$ForumActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      Comment comment,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading,
      bool showErrorMessages});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$ForumActorStateCopyWithImpl<$Res>
    extends _$ForumActorStateCopyWithImpl<$Res>
    implements _$ForumActorStateCopyWith<$Res> {
  __$ForumActorStateCopyWithImpl(
      _ForumActorState _value, $Res Function(_ForumActorState) _then)
      : super(_value, (v) => _then(v as _ForumActorState));

  @override
  _ForumActorState get _value => super._value as _ForumActorState;

  @override
  $Res call({
    Object? userId = freezed,
    Object? comment = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_ForumActorState(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForumActorState implements _ForumActorState {
  const _$_ForumActorState(
      {required this.userId,
      required this.comment,
      required this.createFailureOrSuccessOption,
      required this.isLoading,
      required this.showErrorMessages});

  @override
  final String userId;
  @override
  final Comment comment;
  @override
  final Option<Either<DataFailure, Unit>> createFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ForumActorState(userId: $userId, comment: $comment, createFailureOrSuccessOption: $createFailureOrSuccessOption, isLoading: $isLoading, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumActorState &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(createFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$ForumActorStateCopyWith<_ForumActorState> get copyWith =>
      __$ForumActorStateCopyWithImpl<_ForumActorState>(this, _$identity);
}

abstract class _ForumActorState implements ForumActorState {
  const factory _ForumActorState(
      {required String userId,
      required Comment comment,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading,
      required bool showErrorMessages}) = _$_ForumActorState;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  Comment get comment => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumActorStateCopyWith<_ForumActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
