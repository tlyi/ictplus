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

  _Voted voted(String forumId, int index) {
    return _Voted(
      forumId,
      index,
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
    required TResult Function(String forumId, int index) voted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId, int index)? voted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Voted value) voted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Voted value)? voted,
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
    required TResult Function(String forumId, int index) voted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId, int index)? voted,
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
    required TResult Function(_Voted value) voted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Voted value)? voted,
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
    required TResult Function(String forumId, int index) voted,
  }) {
    return voted(forumId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId, int index)? voted,
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
    required TResult Function(_Voted value) voted,
  }) {
    return voted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Voted value)? voted,
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
