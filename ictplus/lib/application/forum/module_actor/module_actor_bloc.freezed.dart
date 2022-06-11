// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'module_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModuleActorEventTearOff {
  const _$ModuleActorEventTearOff();

  _RetrieveProfile retrieveProfile() {
    return const _RetrieveProfile();
  }

  _ModuleAdded moduleAdded(String moduleCode) {
    return _ModuleAdded(
      moduleCode,
    );
  }

  _ModuleRemoved moduleRemoved(String moduleCode) {
    return _ModuleRemoved(
      moduleCode,
    );
  }
}

/// @nodoc
const $ModuleActorEvent = _$ModuleActorEventTearOff();

/// @nodoc
mixin _$ModuleActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveProfile,
    required TResult Function(String moduleCode) moduleAdded,
    required TResult Function(String moduleCode) moduleRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveProfile,
    TResult Function(String moduleCode)? moduleAdded,
    TResult Function(String moduleCode)? moduleRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveProfile value) retrieveProfile,
    required TResult Function(_ModuleAdded value) moduleAdded,
    required TResult Function(_ModuleRemoved value) moduleRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveProfile value)? retrieveProfile,
    TResult Function(_ModuleAdded value)? moduleAdded,
    TResult Function(_ModuleRemoved value)? moduleRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleActorEventCopyWith<$Res> {
  factory $ModuleActorEventCopyWith(
          ModuleActorEvent value, $Res Function(ModuleActorEvent) then) =
      _$ModuleActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleActorEventCopyWithImpl<$Res>
    implements $ModuleActorEventCopyWith<$Res> {
  _$ModuleActorEventCopyWithImpl(this._value, this._then);

  final ModuleActorEvent _value;
  // ignore: unused_field
  final $Res Function(ModuleActorEvent) _then;
}

/// @nodoc
abstract class _$RetrieveProfileCopyWith<$Res> {
  factory _$RetrieveProfileCopyWith(
          _RetrieveProfile value, $Res Function(_RetrieveProfile) then) =
      __$RetrieveProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveProfileCopyWithImpl<$Res>
    extends _$ModuleActorEventCopyWithImpl<$Res>
    implements _$RetrieveProfileCopyWith<$Res> {
  __$RetrieveProfileCopyWithImpl(
      _RetrieveProfile _value, $Res Function(_RetrieveProfile) _then)
      : super(_value, (v) => _then(v as _RetrieveProfile));

  @override
  _RetrieveProfile get _value => super._value as _RetrieveProfile;
}

/// @nodoc

class _$_RetrieveProfile implements _RetrieveProfile {
  const _$_RetrieveProfile();

  @override
  String toString() {
    return 'ModuleActorEvent.retrieveProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveProfile,
    required TResult Function(String moduleCode) moduleAdded,
    required TResult Function(String moduleCode) moduleRemoved,
  }) {
    return retrieveProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveProfile,
    TResult Function(String moduleCode)? moduleAdded,
    TResult Function(String moduleCode)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (retrieveProfile != null) {
      return retrieveProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveProfile value) retrieveProfile,
    required TResult Function(_ModuleAdded value) moduleAdded,
    required TResult Function(_ModuleRemoved value) moduleRemoved,
  }) {
    return retrieveProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveProfile value)? retrieveProfile,
    TResult Function(_ModuleAdded value)? moduleAdded,
    TResult Function(_ModuleRemoved value)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (retrieveProfile != null) {
      return retrieveProfile(this);
    }
    return orElse();
  }
}

abstract class _RetrieveProfile implements ModuleActorEvent {
  const factory _RetrieveProfile() = _$_RetrieveProfile;
}

/// @nodoc
abstract class _$ModuleAddedCopyWith<$Res> {
  factory _$ModuleAddedCopyWith(
          _ModuleAdded value, $Res Function(_ModuleAdded) then) =
      __$ModuleAddedCopyWithImpl<$Res>;
  $Res call({String moduleCode});
}

/// @nodoc
class __$ModuleAddedCopyWithImpl<$Res>
    extends _$ModuleActorEventCopyWithImpl<$Res>
    implements _$ModuleAddedCopyWith<$Res> {
  __$ModuleAddedCopyWithImpl(
      _ModuleAdded _value, $Res Function(_ModuleAdded) _then)
      : super(_value, (v) => _then(v as _ModuleAdded));

  @override
  _ModuleAdded get _value => super._value as _ModuleAdded;

  @override
  $Res call({
    Object? moduleCode = freezed,
  }) {
    return _then(_ModuleAdded(
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ModuleAdded implements _ModuleAdded {
  const _$_ModuleAdded(this.moduleCode);

  @override
  final String moduleCode;

  @override
  String toString() {
    return 'ModuleActorEvent.moduleAdded(moduleCode: $moduleCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModuleAdded &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moduleCode);

  @JsonKey(ignore: true)
  @override
  _$ModuleAddedCopyWith<_ModuleAdded> get copyWith =>
      __$ModuleAddedCopyWithImpl<_ModuleAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveProfile,
    required TResult Function(String moduleCode) moduleAdded,
    required TResult Function(String moduleCode) moduleRemoved,
  }) {
    return moduleAdded(moduleCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveProfile,
    TResult Function(String moduleCode)? moduleAdded,
    TResult Function(String moduleCode)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (moduleAdded != null) {
      return moduleAdded(moduleCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveProfile value) retrieveProfile,
    required TResult Function(_ModuleAdded value) moduleAdded,
    required TResult Function(_ModuleRemoved value) moduleRemoved,
  }) {
    return moduleAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveProfile value)? retrieveProfile,
    TResult Function(_ModuleAdded value)? moduleAdded,
    TResult Function(_ModuleRemoved value)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (moduleAdded != null) {
      return moduleAdded(this);
    }
    return orElse();
  }
}

abstract class _ModuleAdded implements ModuleActorEvent {
  const factory _ModuleAdded(String moduleCode) = _$_ModuleAdded;

  String get moduleCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModuleAddedCopyWith<_ModuleAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModuleRemovedCopyWith<$Res> {
  factory _$ModuleRemovedCopyWith(
          _ModuleRemoved value, $Res Function(_ModuleRemoved) then) =
      __$ModuleRemovedCopyWithImpl<$Res>;
  $Res call({String moduleCode});
}

/// @nodoc
class __$ModuleRemovedCopyWithImpl<$Res>
    extends _$ModuleActorEventCopyWithImpl<$Res>
    implements _$ModuleRemovedCopyWith<$Res> {
  __$ModuleRemovedCopyWithImpl(
      _ModuleRemoved _value, $Res Function(_ModuleRemoved) _then)
      : super(_value, (v) => _then(v as _ModuleRemoved));

  @override
  _ModuleRemoved get _value => super._value as _ModuleRemoved;

  @override
  $Res call({
    Object? moduleCode = freezed,
  }) {
    return _then(_ModuleRemoved(
      moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ModuleRemoved implements _ModuleRemoved {
  const _$_ModuleRemoved(this.moduleCode);

  @override
  final String moduleCode;

  @override
  String toString() {
    return 'ModuleActorEvent.moduleRemoved(moduleCode: $moduleCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModuleRemoved &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moduleCode);

  @JsonKey(ignore: true)
  @override
  _$ModuleRemovedCopyWith<_ModuleRemoved> get copyWith =>
      __$ModuleRemovedCopyWithImpl<_ModuleRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveProfile,
    required TResult Function(String moduleCode) moduleAdded,
    required TResult Function(String moduleCode) moduleRemoved,
  }) {
    return moduleRemoved(moduleCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveProfile,
    TResult Function(String moduleCode)? moduleAdded,
    TResult Function(String moduleCode)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (moduleRemoved != null) {
      return moduleRemoved(moduleCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveProfile value) retrieveProfile,
    required TResult Function(_ModuleAdded value) moduleAdded,
    required TResult Function(_ModuleRemoved value) moduleRemoved,
  }) {
    return moduleRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveProfile value)? retrieveProfile,
    TResult Function(_ModuleAdded value)? moduleAdded,
    TResult Function(_ModuleRemoved value)? moduleRemoved,
    required TResult orElse(),
  }) {
    if (moduleRemoved != null) {
      return moduleRemoved(this);
    }
    return orElse();
  }
}

abstract class _ModuleRemoved implements ModuleActorEvent {
  const factory _ModuleRemoved(String moduleCode) = _$_ModuleRemoved;

  String get moduleCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModuleRemovedCopyWith<_ModuleRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ModuleActorStateTearOff {
  const _$ModuleActorStateTearOff();

  _ModuleActorState call(
      {required Profile profile,
      required bool rebuild,
      required Either<DataFailure, Unit> failureOrSuccess}) {
    return _ModuleActorState(
      profile: profile,
      rebuild: rebuild,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $ModuleActorState = _$ModuleActorStateTearOff();

/// @nodoc
mixin _$ModuleActorState {
  Profile get profile => throw _privateConstructorUsedError;
  bool get rebuild => throw _privateConstructorUsedError;
  Either<DataFailure, Unit> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModuleActorStateCopyWith<ModuleActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleActorStateCopyWith<$Res> {
  factory $ModuleActorStateCopyWith(
          ModuleActorState value, $Res Function(ModuleActorState) then) =
      _$ModuleActorStateCopyWithImpl<$Res>;
  $Res call(
      {Profile profile,
      bool rebuild,
      Either<DataFailure, Unit> failureOrSuccess});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$ModuleActorStateCopyWithImpl<$Res>
    implements $ModuleActorStateCopyWith<$Res> {
  _$ModuleActorStateCopyWithImpl(this._value, this._then);

  final ModuleActorState _value;
  // ignore: unused_field
  final $Res Function(ModuleActorState) _then;

  @override
  $Res call({
    Object? profile = freezed,
    Object? rebuild = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      rebuild: rebuild == freezed
          ? _value.rebuild
          : rebuild // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Unit>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$ModuleActorStateCopyWith<$Res>
    implements $ModuleActorStateCopyWith<$Res> {
  factory _$ModuleActorStateCopyWith(
          _ModuleActorState value, $Res Function(_ModuleActorState) then) =
      __$ModuleActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Profile profile,
      bool rebuild,
      Either<DataFailure, Unit> failureOrSuccess});

  @override
  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$ModuleActorStateCopyWithImpl<$Res>
    extends _$ModuleActorStateCopyWithImpl<$Res>
    implements _$ModuleActorStateCopyWith<$Res> {
  __$ModuleActorStateCopyWithImpl(
      _ModuleActorState _value, $Res Function(_ModuleActorState) _then)
      : super(_value, (v) => _then(v as _ModuleActorState));

  @override
  _ModuleActorState get _value => super._value as _ModuleActorState;

  @override
  $Res call({
    Object? profile = freezed,
    Object? rebuild = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_ModuleActorState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      rebuild: rebuild == freezed
          ? _value.rebuild
          : rebuild // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_ModuleActorState implements _ModuleActorState {
  const _$_ModuleActorState(
      {required this.profile,
      required this.rebuild,
      required this.failureOrSuccess});

  @override
  final Profile profile;
  @override
  final bool rebuild;
  @override
  final Either<DataFailure, Unit> failureOrSuccess;

  @override
  String toString() {
    return 'ModuleActorState(profile: $profile, rebuild: $rebuild, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModuleActorState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.rebuild, rebuild) ||
                const DeepCollectionEquality()
                    .equals(other.rebuild, rebuild)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(rebuild) ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ModuleActorStateCopyWith<_ModuleActorState> get copyWith =>
      __$ModuleActorStateCopyWithImpl<_ModuleActorState>(this, _$identity);
}

abstract class _ModuleActorState implements ModuleActorState {
  const factory _ModuleActorState(
          {required Profile profile,
          required bool rebuild,
          required Either<DataFailure, Unit> failureOrSuccess}) =
      _$_ModuleActorState;

  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  bool get rebuild => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, Unit> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModuleActorStateCopyWith<_ModuleActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
