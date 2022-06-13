// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileActorEventTearOff {
  const _$ProfileActorEventTearOff();

  _LoadingOtherProfile loadingOtherProfile(String userId) {
    return _LoadingOtherProfile(
      userId,
    );
  }

  _LoadingOwnProfile loadingOwnProfile() {
    return const _LoadingOwnProfile();
  }
}

/// @nodoc
const $ProfileActorEvent = _$ProfileActorEventTearOff();

/// @nodoc
mixin _$ProfileActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileActorEventCopyWith<$Res> {
  factory $ProfileActorEventCopyWith(
          ProfileActorEvent value, $Res Function(ProfileActorEvent) then) =
      _$ProfileActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileActorEventCopyWithImpl<$Res>
    implements $ProfileActorEventCopyWith<$Res> {
  _$ProfileActorEventCopyWithImpl(this._value, this._then);

  final ProfileActorEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileActorEvent) _then;
}

/// @nodoc
abstract class _$LoadingOtherProfileCopyWith<$Res> {
  factory _$LoadingOtherProfileCopyWith(_LoadingOtherProfile value,
          $Res Function(_LoadingOtherProfile) then) =
      __$LoadingOtherProfileCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$LoadingOtherProfileCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$LoadingOtherProfileCopyWith<$Res> {
  __$LoadingOtherProfileCopyWithImpl(
      _LoadingOtherProfile _value, $Res Function(_LoadingOtherProfile) _then)
      : super(_value, (v) => _then(v as _LoadingOtherProfile));

  @override
  _LoadingOtherProfile get _value => super._value as _LoadingOtherProfile;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_LoadingOtherProfile(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadingOtherProfile implements _LoadingOtherProfile {
  const _$_LoadingOtherProfile(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileActorEvent.loadingOtherProfile(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingOtherProfile &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$LoadingOtherProfileCopyWith<_LoadingOtherProfile> get copyWith =>
      __$LoadingOtherProfileCopyWithImpl<_LoadingOtherProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
  }) {
    return loadingOtherProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    required TResult orElse(),
  }) {
    if (loadingOtherProfile != null) {
      return loadingOtherProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
  }) {
    return loadingOtherProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    required TResult orElse(),
  }) {
    if (loadingOtherProfile != null) {
      return loadingOtherProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadingOtherProfile implements ProfileActorEvent {
  const factory _LoadingOtherProfile(String userId) = _$_LoadingOtherProfile;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingOtherProfileCopyWith<_LoadingOtherProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingOwnProfileCopyWith<$Res> {
  factory _$LoadingOwnProfileCopyWith(
          _LoadingOwnProfile value, $Res Function(_LoadingOwnProfile) then) =
      __$LoadingOwnProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingOwnProfileCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$LoadingOwnProfileCopyWith<$Res> {
  __$LoadingOwnProfileCopyWithImpl(
      _LoadingOwnProfile _value, $Res Function(_LoadingOwnProfile) _then)
      : super(_value, (v) => _then(v as _LoadingOwnProfile));

  @override
  _LoadingOwnProfile get _value => super._value as _LoadingOwnProfile;
}

/// @nodoc

class _$_LoadingOwnProfile implements _LoadingOwnProfile {
  const _$_LoadingOwnProfile();

  @override
  String toString() {
    return 'ProfileActorEvent.loadingOwnProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingOwnProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
  }) {
    return loadingOwnProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    required TResult orElse(),
  }) {
    if (loadingOwnProfile != null) {
      return loadingOwnProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
  }) {
    return loadingOwnProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    required TResult orElse(),
  }) {
    if (loadingOwnProfile != null) {
      return loadingOwnProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadingOwnProfile implements ProfileActorEvent {
  const factory _LoadingOwnProfile() = _$_LoadingOwnProfile;
}

/// @nodoc
class _$ProfileActorStateTearOff {
  const _$ProfileActorStateTearOff();

  _ProfileActorState call(
      {required Either<DataFailure, Profile> failureOrUserProfile,
      required String ownId,
      required String userId,
      required bool isLoading}) {
    return _ProfileActorState(
      failureOrUserProfile: failureOrUserProfile,
      ownId: ownId,
      userId: userId,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ProfileActorState = _$ProfileActorStateTearOff();

/// @nodoc
mixin _$ProfileActorState {
  Either<DataFailure, Profile> get failureOrUserProfile =>
      throw _privateConstructorUsedError;
  String get ownId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileActorStateCopyWith<ProfileActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileActorStateCopyWith<$Res> {
  factory $ProfileActorStateCopyWith(
          ProfileActorState value, $Res Function(ProfileActorState) then) =
      _$ProfileActorStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, Profile> failureOrUserProfile,
      String ownId,
      String userId,
      bool isLoading});
}

/// @nodoc
class _$ProfileActorStateCopyWithImpl<$Res>
    implements $ProfileActorStateCopyWith<$Res> {
  _$ProfileActorStateCopyWithImpl(this._value, this._then);

  final ProfileActorState _value;
  // ignore: unused_field
  final $Res Function(ProfileActorState) _then;

  @override
  $Res call({
    Object? failureOrUserProfile = freezed,
    Object? ownId = freezed,
    Object? userId = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrUserProfile: failureOrUserProfile == freezed
          ? _value.failureOrUserProfile
          : failureOrUserProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProfileActorStateCopyWith<$Res>
    implements $ProfileActorStateCopyWith<$Res> {
  factory _$ProfileActorStateCopyWith(
          _ProfileActorState value, $Res Function(_ProfileActorState) then) =
      __$ProfileActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, Profile> failureOrUserProfile,
      String ownId,
      String userId,
      bool isLoading});
}

/// @nodoc
class __$ProfileActorStateCopyWithImpl<$Res>
    extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$ProfileActorStateCopyWith<$Res> {
  __$ProfileActorStateCopyWithImpl(
      _ProfileActorState _value, $Res Function(_ProfileActorState) _then)
      : super(_value, (v) => _then(v as _ProfileActorState));

  @override
  _ProfileActorState get _value => super._value as _ProfileActorState;

  @override
  $Res call({
    Object? failureOrUserProfile = freezed,
    Object? ownId = freezed,
    Object? userId = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ProfileActorState(
      failureOrUserProfile: failureOrUserProfile == freezed
          ? _value.failureOrUserProfile
          : failureOrUserProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileActorState implements _ProfileActorState {
  const _$_ProfileActorState(
      {required this.failureOrUserProfile,
      required this.ownId,
      required this.userId,
      required this.isLoading});

  @override
  final Either<DataFailure, Profile> failureOrUserProfile;
  @override
  final String ownId;
  @override
  final String userId;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProfileActorState(failureOrUserProfile: $failureOrUserProfile, ownId: $ownId, userId: $userId, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileActorState &&
            (identical(other.failureOrUserProfile, failureOrUserProfile) ||
                const DeepCollectionEquality().equals(
                    other.failureOrUserProfile, failureOrUserProfile)) &&
            (identical(other.ownId, ownId) ||
                const DeepCollectionEquality().equals(other.ownId, ownId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUserProfile) ^
      const DeepCollectionEquality().hash(ownId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ProfileActorStateCopyWith<_ProfileActorState> get copyWith =>
      __$ProfileActorStateCopyWithImpl<_ProfileActorState>(this, _$identity);
}

abstract class _ProfileActorState implements ProfileActorState {
  const factory _ProfileActorState(
      {required Either<DataFailure, Profile> failureOrUserProfile,
      required String ownId,
      required String userId,
      required bool isLoading}) = _$_ProfileActorState;

  @override
  Either<DataFailure, Profile> get failureOrUserProfile =>
      throw _privateConstructorUsedError;
  @override
  String get ownId => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileActorStateCopyWith<_ProfileActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
