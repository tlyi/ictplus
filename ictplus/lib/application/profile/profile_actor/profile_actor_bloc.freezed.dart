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

  _AddedFollower addedFollower() {
    return const _AddedFollower();
  }

  _RemovedFollower removedFollower() {
    return const _RemovedFollower();
  }

  _OpenStats openStats() {
    return const _OpenStats();
  }

  _MoreStats moreStats() {
    return const _MoreStats();
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
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
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
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return loadingOtherProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
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
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return loadingOtherProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
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
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return loadingOwnProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
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
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return loadingOwnProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
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
abstract class _$AddedFollowerCopyWith<$Res> {
  factory _$AddedFollowerCopyWith(
          _AddedFollower value, $Res Function(_AddedFollower) then) =
      __$AddedFollowerCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddedFollowerCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$AddedFollowerCopyWith<$Res> {
  __$AddedFollowerCopyWithImpl(
      _AddedFollower _value, $Res Function(_AddedFollower) _then)
      : super(_value, (v) => _then(v as _AddedFollower));

  @override
  _AddedFollower get _value => super._value as _AddedFollower;
}

/// @nodoc

class _$_AddedFollower implements _AddedFollower {
  const _$_AddedFollower();

  @override
  String toString() {
    return 'ProfileActorEvent.addedFollower()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedFollower);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return addedFollower();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
    required TResult orElse(),
  }) {
    if (addedFollower != null) {
      return addedFollower();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return addedFollower(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
    required TResult orElse(),
  }) {
    if (addedFollower != null) {
      return addedFollower(this);
    }
    return orElse();
  }
}

abstract class _AddedFollower implements ProfileActorEvent {
  const factory _AddedFollower() = _$_AddedFollower;
}

/// @nodoc
abstract class _$RemovedFollowerCopyWith<$Res> {
  factory _$RemovedFollowerCopyWith(
          _RemovedFollower value, $Res Function(_RemovedFollower) then) =
      __$RemovedFollowerCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemovedFollowerCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$RemovedFollowerCopyWith<$Res> {
  __$RemovedFollowerCopyWithImpl(
      _RemovedFollower _value, $Res Function(_RemovedFollower) _then)
      : super(_value, (v) => _then(v as _RemovedFollower));

  @override
  _RemovedFollower get _value => super._value as _RemovedFollower;
}

/// @nodoc

class _$_RemovedFollower implements _RemovedFollower {
  const _$_RemovedFollower();

  @override
  String toString() {
    return 'ProfileActorEvent.removedFollower()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemovedFollower);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return removedFollower();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
    required TResult orElse(),
  }) {
    if (removedFollower != null) {
      return removedFollower();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return removedFollower(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
    required TResult orElse(),
  }) {
    if (removedFollower != null) {
      return removedFollower(this);
    }
    return orElse();
  }
}

abstract class _RemovedFollower implements ProfileActorEvent {
  const factory _RemovedFollower() = _$_RemovedFollower;
}

/// @nodoc
abstract class _$OpenStatsCopyWith<$Res> {
  factory _$OpenStatsCopyWith(
          _OpenStats value, $Res Function(_OpenStats) then) =
      __$OpenStatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenStatsCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$OpenStatsCopyWith<$Res> {
  __$OpenStatsCopyWithImpl(_OpenStats _value, $Res Function(_OpenStats) _then)
      : super(_value, (v) => _then(v as _OpenStats));

  @override
  _OpenStats get _value => super._value as _OpenStats;
}

/// @nodoc

class _$_OpenStats implements _OpenStats {
  const _$_OpenStats();

  @override
  String toString() {
    return 'ProfileActorEvent.openStats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenStats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return openStats();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
    required TResult orElse(),
  }) {
    if (openStats != null) {
      return openStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return openStats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
    required TResult orElse(),
  }) {
    if (openStats != null) {
      return openStats(this);
    }
    return orElse();
  }
}

abstract class _OpenStats implements ProfileActorEvent {
  const factory _OpenStats() = _$_OpenStats;
}

/// @nodoc
abstract class _$MoreStatsCopyWith<$Res> {
  factory _$MoreStatsCopyWith(
          _MoreStats value, $Res Function(_MoreStats) then) =
      __$MoreStatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$MoreStatsCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$MoreStatsCopyWith<$Res> {
  __$MoreStatsCopyWithImpl(_MoreStats _value, $Res Function(_MoreStats) _then)
      : super(_value, (v) => _then(v as _MoreStats));

  @override
  _MoreStats get _value => super._value as _MoreStats;
}

/// @nodoc

class _$_MoreStats implements _MoreStats {
  const _$_MoreStats();

  @override
  String toString() {
    return 'ProfileActorEvent.moreStats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MoreStats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadingOtherProfile,
    required TResult Function() loadingOwnProfile,
    required TResult Function() addedFollower,
    required TResult Function() removedFollower,
    required TResult Function() openStats,
    required TResult Function() moreStats,
  }) {
    return moreStats();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadingOtherProfile,
    TResult Function()? loadingOwnProfile,
    TResult Function()? addedFollower,
    TResult Function()? removedFollower,
    TResult Function()? openStats,
    TResult Function()? moreStats,
    required TResult orElse(),
  }) {
    if (moreStats != null) {
      return moreStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingOtherProfile value) loadingOtherProfile,
    required TResult Function(_LoadingOwnProfile value) loadingOwnProfile,
    required TResult Function(_AddedFollower value) addedFollower,
    required TResult Function(_RemovedFollower value) removedFollower,
    required TResult Function(_OpenStats value) openStats,
    required TResult Function(_MoreStats value) moreStats,
  }) {
    return moreStats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingOtherProfile value)? loadingOtherProfile,
    TResult Function(_LoadingOwnProfile value)? loadingOwnProfile,
    TResult Function(_AddedFollower value)? addedFollower,
    TResult Function(_RemovedFollower value)? removedFollower,
    TResult Function(_OpenStats value)? openStats,
    TResult Function(_MoreStats value)? moreStats,
    required TResult orElse(),
  }) {
    if (moreStats != null) {
      return moreStats(this);
    }
    return orElse();
  }
}

abstract class _MoreStats implements ProfileActorEvent {
  const factory _MoreStats() = _$_MoreStats;
}

/// @nodoc
class _$ProfileActorStateTearOff {
  const _$ProfileActorStateTearOff();

  _ProfileActorState call(
      {required Either<DataFailure, Profile> failureOrUserProfile,
      required String ownId,
      required String userId,
      required bool isLoading,
      required bool isFollowing,
      required Either<DataFailure, List<Profile>> failureOrFollowing,
      required Either<DataFailure, List<Profile>> failureOrFollowers,
      required Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
      required int statsDisplay}) {
    return _ProfileActorState(
      failureOrUserProfile: failureOrUserProfile,
      ownId: ownId,
      userId: userId,
      isLoading: isLoading,
      isFollowing: isFollowing,
      failureOrFollowing: failureOrFollowing,
      failureOrFollowers: failureOrFollowers,
      failureOrForumsPosted: failureOrForumsPosted,
      statsDisplay: statsDisplay,
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
  bool get isFollowing => throw _privateConstructorUsedError;
  Either<DataFailure, List<Profile>> get failureOrFollowing =>
      throw _privateConstructorUsedError;
  Either<DataFailure, List<Profile>> get failureOrFollowers =>
      throw _privateConstructorUsedError;
  Either<DataFailure, List<ForumPost>> get failureOrForumsPosted =>
      throw _privateConstructorUsedError;
  int get statsDisplay => throw _privateConstructorUsedError;

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
      bool isLoading,
      bool isFollowing,
      Either<DataFailure, List<Profile>> failureOrFollowing,
      Either<DataFailure, List<Profile>> failureOrFollowers,
      Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
      int statsDisplay});
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
    Object? isFollowing = freezed,
    Object? failureOrFollowing = freezed,
    Object? failureOrFollowers = freezed,
    Object? failureOrForumsPosted = freezed,
    Object? statsDisplay = freezed,
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
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrFollowing: failureOrFollowing == freezed
          ? _value.failureOrFollowing
          : failureOrFollowing // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      failureOrFollowers: failureOrFollowers == freezed
          ? _value.failureOrFollowers
          : failureOrFollowers // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      failureOrForumsPosted: failureOrForumsPosted == freezed
          ? _value.failureOrForumsPosted
          : failureOrForumsPosted // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ForumPost>>,
      statsDisplay: statsDisplay == freezed
          ? _value.statsDisplay
          : statsDisplay // ignore: cast_nullable_to_non_nullable
              as int,
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
      bool isLoading,
      bool isFollowing,
      Either<DataFailure, List<Profile>> failureOrFollowing,
      Either<DataFailure, List<Profile>> failureOrFollowers,
      Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
      int statsDisplay});
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
    Object? isFollowing = freezed,
    Object? failureOrFollowing = freezed,
    Object? failureOrFollowers = freezed,
    Object? failureOrForumsPosted = freezed,
    Object? statsDisplay = freezed,
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
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrFollowing: failureOrFollowing == freezed
          ? _value.failureOrFollowing
          : failureOrFollowing // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      failureOrFollowers: failureOrFollowers == freezed
          ? _value.failureOrFollowers
          : failureOrFollowers // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      failureOrForumsPosted: failureOrForumsPosted == freezed
          ? _value.failureOrForumsPosted
          : failureOrForumsPosted // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ForumPost>>,
      statsDisplay: statsDisplay == freezed
          ? _value.statsDisplay
          : statsDisplay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProfileActorState implements _ProfileActorState {
  const _$_ProfileActorState(
      {required this.failureOrUserProfile,
      required this.ownId,
      required this.userId,
      required this.isLoading,
      required this.isFollowing,
      required this.failureOrFollowing,
      required this.failureOrFollowers,
      required this.failureOrForumsPosted,
      required this.statsDisplay});

  @override
  final Either<DataFailure, Profile> failureOrUserProfile;
  @override
  final String ownId;
  @override
  final String userId;
  @override
  final bool isLoading;
  @override
  final bool isFollowing;
  @override
  final Either<DataFailure, List<Profile>> failureOrFollowing;
  @override
  final Either<DataFailure, List<Profile>> failureOrFollowers;
  @override
  final Either<DataFailure, List<ForumPost>> failureOrForumsPosted;
  @override
  final int statsDisplay;

  @override
  String toString() {
    return 'ProfileActorState(failureOrUserProfile: $failureOrUserProfile, ownId: $ownId, userId: $userId, isLoading: $isLoading, isFollowing: $isFollowing, failureOrFollowing: $failureOrFollowing, failureOrFollowers: $failureOrFollowers, failureOrForumsPosted: $failureOrForumsPosted, statsDisplay: $statsDisplay)';
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
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)) &&
            (identical(other.failureOrFollowing, failureOrFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrFollowing, failureOrFollowing)) &&
            (identical(other.failureOrFollowers, failureOrFollowers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrFollowers, failureOrFollowers)) &&
            (identical(other.failureOrForumsPosted, failureOrForumsPosted) ||
                const DeepCollectionEquality().equals(
                    other.failureOrForumsPosted, failureOrForumsPosted)) &&
            (identical(other.statsDisplay, statsDisplay) ||
                const DeepCollectionEquality()
                    .equals(other.statsDisplay, statsDisplay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUserProfile) ^
      const DeepCollectionEquality().hash(ownId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFollowing) ^
      const DeepCollectionEquality().hash(failureOrFollowing) ^
      const DeepCollectionEquality().hash(failureOrFollowers) ^
      const DeepCollectionEquality().hash(failureOrForumsPosted) ^
      const DeepCollectionEquality().hash(statsDisplay);

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
      required bool isLoading,
      required bool isFollowing,
      required Either<DataFailure, List<Profile>> failureOrFollowing,
      required Either<DataFailure, List<Profile>> failureOrFollowers,
      required Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
      required int statsDisplay}) = _$_ProfileActorState;

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
  bool get isFollowing => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, List<Profile>> get failureOrFollowing =>
      throw _privateConstructorUsedError;
  @override
  Either<DataFailure, List<Profile>> get failureOrFollowers =>
      throw _privateConstructorUsedError;
  @override
  Either<DataFailure, List<ForumPost>> get failureOrForumsPosted =>
      throw _privateConstructorUsedError;
  @override
  int get statsDisplay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileActorStateCopyWith<_ProfileActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
