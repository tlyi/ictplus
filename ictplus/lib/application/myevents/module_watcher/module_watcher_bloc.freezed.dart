// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'module_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModuleWatcherEventTearOff {
  const _$ModuleWatcherEventTearOff();

  _RetrieveModulesStarted retrieveModulesStarted() {
    return const _RetrieveModulesStarted();
  }

  _ModulesReceived modulesReceived(
      Either<DataFailure, List<Mod>> failureOrModules) {
    return _ModulesReceived(
      failureOrModules,
    );
  }
}

/// @nodoc
const $ModuleWatcherEvent = _$ModuleWatcherEventTearOff();

/// @nodoc
mixin _$ModuleWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveModulesStarted,
    required TResult Function(Either<DataFailure, List<Mod>> failureOrModules)
        modulesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveModulesStarted,
    TResult Function(Either<DataFailure, List<Mod>> failureOrModules)?
        modulesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveModulesStarted value)
        retrieveModulesStarted,
    required TResult Function(_ModulesReceived value) modulesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveModulesStarted value)? retrieveModulesStarted,
    TResult Function(_ModulesReceived value)? modulesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleWatcherEventCopyWith<$Res> {
  factory $ModuleWatcherEventCopyWith(
          ModuleWatcherEvent value, $Res Function(ModuleWatcherEvent) then) =
      _$ModuleWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleWatcherEventCopyWithImpl<$Res>
    implements $ModuleWatcherEventCopyWith<$Res> {
  _$ModuleWatcherEventCopyWithImpl(this._value, this._then);

  final ModuleWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ModuleWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveModulesStartedCopyWith<$Res> {
  factory _$RetrieveModulesStartedCopyWith(_RetrieveModulesStarted value,
          $Res Function(_RetrieveModulesStarted) then) =
      __$RetrieveModulesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveModulesStartedCopyWithImpl<$Res>
    extends _$ModuleWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveModulesStartedCopyWith<$Res> {
  __$RetrieveModulesStartedCopyWithImpl(_RetrieveModulesStarted _value,
      $Res Function(_RetrieveModulesStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveModulesStarted));

  @override
  _RetrieveModulesStarted get _value => super._value as _RetrieveModulesStarted;
}

/// @nodoc

class _$_RetrieveModulesStarted implements _RetrieveModulesStarted {
  const _$_RetrieveModulesStarted();

  @override
  String toString() {
    return 'ModuleWatcherEvent.retrieveModulesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveModulesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveModulesStarted,
    required TResult Function(Either<DataFailure, List<Mod>> failureOrModules)
        modulesReceived,
  }) {
    return retrieveModulesStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveModulesStarted,
    TResult Function(Either<DataFailure, List<Mod>> failureOrModules)?
        modulesReceived,
    required TResult orElse(),
  }) {
    if (retrieveModulesStarted != null) {
      return retrieveModulesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveModulesStarted value)
        retrieveModulesStarted,
    required TResult Function(_ModulesReceived value) modulesReceived,
  }) {
    return retrieveModulesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveModulesStarted value)? retrieveModulesStarted,
    TResult Function(_ModulesReceived value)? modulesReceived,
    required TResult orElse(),
  }) {
    if (retrieveModulesStarted != null) {
      return retrieveModulesStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveModulesStarted implements ModuleWatcherEvent {
  const factory _RetrieveModulesStarted() = _$_RetrieveModulesStarted;
}

/// @nodoc
abstract class _$ModulesReceivedCopyWith<$Res> {
  factory _$ModulesReceivedCopyWith(
          _ModulesReceived value, $Res Function(_ModulesReceived) then) =
      __$ModulesReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<Mod>> failureOrModules});
}

/// @nodoc
class __$ModulesReceivedCopyWithImpl<$Res>
    extends _$ModuleWatcherEventCopyWithImpl<$Res>
    implements _$ModulesReceivedCopyWith<$Res> {
  __$ModulesReceivedCopyWithImpl(
      _ModulesReceived _value, $Res Function(_ModulesReceived) _then)
      : super(_value, (v) => _then(v as _ModulesReceived));

  @override
  _ModulesReceived get _value => super._value as _ModulesReceived;

  @override
  $Res call({
    Object? failureOrModules = freezed,
  }) {
    return _then(_ModulesReceived(
      failureOrModules == freezed
          ? _value.failureOrModules
          : failureOrModules // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Mod>>,
    ));
  }
}

/// @nodoc

class _$_ModulesReceived implements _ModulesReceived {
  const _$_ModulesReceived(this.failureOrModules);

  @override
  final Either<DataFailure, List<Mod>> failureOrModules;

  @override
  String toString() {
    return 'ModuleWatcherEvent.modulesReceived(failureOrModules: $failureOrModules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModulesReceived &&
            (identical(other.failureOrModules, failureOrModules) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrModules, failureOrModules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrModules);

  @JsonKey(ignore: true)
  @override
  _$ModulesReceivedCopyWith<_ModulesReceived> get copyWith =>
      __$ModulesReceivedCopyWithImpl<_ModulesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveModulesStarted,
    required TResult Function(Either<DataFailure, List<Mod>> failureOrModules)
        modulesReceived,
  }) {
    return modulesReceived(failureOrModules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveModulesStarted,
    TResult Function(Either<DataFailure, List<Mod>> failureOrModules)?
        modulesReceived,
    required TResult orElse(),
  }) {
    if (modulesReceived != null) {
      return modulesReceived(failureOrModules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveModulesStarted value)
        retrieveModulesStarted,
    required TResult Function(_ModulesReceived value) modulesReceived,
  }) {
    return modulesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveModulesStarted value)? retrieveModulesStarted,
    TResult Function(_ModulesReceived value)? modulesReceived,
    required TResult orElse(),
  }) {
    if (modulesReceived != null) {
      return modulesReceived(this);
    }
    return orElse();
  }
}

abstract class _ModulesReceived implements ModuleWatcherEvent {
  const factory _ModulesReceived(
      Either<DataFailure, List<Mod>> failureOrModules) = _$_ModulesReceived;

  Either<DataFailure, List<Mod>> get failureOrModules =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModulesReceivedCopyWith<_ModulesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ModuleWatcherStateTearOff {
  const _$ModuleWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Mod> modules) {
    return _LoadSuccess(
      modules,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ModuleWatcherState = _$ModuleWatcherStateTearOff();

/// @nodoc
mixin _$ModuleWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Mod> modules) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Mod> modules)? loadSuccess,
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
abstract class $ModuleWatcherStateCopyWith<$Res> {
  factory $ModuleWatcherStateCopyWith(
          ModuleWatcherState value, $Res Function(ModuleWatcherState) then) =
      _$ModuleWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleWatcherStateCopyWithImpl<$Res>
    implements $ModuleWatcherStateCopyWith<$Res> {
  _$ModuleWatcherStateCopyWithImpl(this._value, this._then);

  final ModuleWatcherState _value;
  // ignore: unused_field
  final $Res Function(ModuleWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ModuleWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleWatcherState.initial()';
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
    required TResult Function(List<Mod> modules) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Mod> modules)? loadSuccess,
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

abstract class _Initial implements ModuleWatcherState {
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
    extends _$ModuleWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleWatcherState.loadInProgress()';
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
    required TResult Function(List<Mod> modules) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Mod> modules)? loadSuccess,
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

abstract class _LoadInProgress implements ModuleWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Mod> modules});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ModuleWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? modules = freezed,
  }) {
    return _then(_LoadSuccess(
      modules == freezed
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Mod>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.modules);

  @override
  final List<Mod> modules;

  @override
  String toString() {
    return 'ModuleWatcherState.loadSuccess(modules: $modules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.modules, modules) ||
                const DeepCollectionEquality().equals(other.modules, modules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(modules);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Mod> modules) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(modules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Mod> modules)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(modules);
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

abstract class _LoadSuccess implements ModuleWatcherState {
  const factory _LoadSuccess(List<Mod> modules) = _$_LoadSuccess;

  List<Mod> get modules => throw _privateConstructorUsedError;
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
    extends _$ModuleWatcherStateCopyWithImpl<$Res>
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
    return 'ModuleWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(List<Mod> modules) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Mod> modules)? loadSuccess,
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

abstract class _LoadFailure implements ModuleWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
