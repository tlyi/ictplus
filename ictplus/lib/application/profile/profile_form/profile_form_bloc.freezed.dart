// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

  _PhotoChanged photoChanged(File photo) {
    return _PhotoChanged(
      photo,
    );
  }

  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

  _CourseChanged courseChanged(String courseStr) {
    return _CourseChanged(
      courseStr,
    );
  }

  _BioChanged bioChanged(String bioStr) {
    return _BioChanged(
      bioStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }

  _GetProfile getProfile() {
    return const _GetProfile();
  }

  _SearchedModule searchedModule(String searchStr) {
    return _SearchedModule(
      searchStr,
    );
  }

  _AddedModule addedModule(String moduleStr) {
    return _AddedModule(
      moduleStr,
    );
  }

  _RemovedModule removedModule(int index) {
    return _RemovedModule(
      index,
    );
  }
}

/// @nodoc
const $ProfileFormEvent = _$ProfileFormEventTearOff();

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

/// @nodoc
abstract class _$PhotoChangedCopyWith<$Res> {
  factory _$PhotoChangedCopyWith(
          _PhotoChanged value, $Res Function(_PhotoChanged) then) =
      __$PhotoChangedCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$PhotoChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$PhotoChangedCopyWith<$Res> {
  __$PhotoChangedCopyWithImpl(
      _PhotoChanged _value, $Res Function(_PhotoChanged) _then)
      : super(_value, (v) => _then(v as _PhotoChanged));

  @override
  _PhotoChanged get _value => super._value as _PhotoChanged;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_PhotoChanged(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PhotoChanged with DiagnosticableTreeMixin implements _PhotoChanged {
  const _$_PhotoChanged(this.photo);

  @override
  final File photo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.photoChanged(photo: $photo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.photoChanged'))
      ..add(DiagnosticsProperty('photo', photo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoChanged &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      __$PhotoChangedCopyWithImpl<_PhotoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return photoChanged(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return photoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(this);
    }
    return orElse();
  }
}

abstract class _PhotoChanged implements ProfileFormEvent {
  const factory _PhotoChanged(File photo) = _$_PhotoChanged;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged
    with DiagnosticableTreeMixin
    implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.usernameChanged'))
      ..add(DiagnosticsProperty('usernameStr', usernameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseChangedCopyWith<$Res> {
  factory _$CourseChangedCopyWith(
          _CourseChanged value, $Res Function(_CourseChanged) then) =
      __$CourseChangedCopyWithImpl<$Res>;
  $Res call({String courseStr});
}

/// @nodoc
class __$CourseChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CourseChangedCopyWith<$Res> {
  __$CourseChangedCopyWithImpl(
      _CourseChanged _value, $Res Function(_CourseChanged) _then)
      : super(_value, (v) => _then(v as _CourseChanged));

  @override
  _CourseChanged get _value => super._value as _CourseChanged;

  @override
  $Res call({
    Object? courseStr = freezed,
  }) {
    return _then(_CourseChanged(
      courseStr == freezed
          ? _value.courseStr
          : courseStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CourseChanged with DiagnosticableTreeMixin implements _CourseChanged {
  const _$_CourseChanged(this.courseStr);

  @override
  final String courseStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.courseChanged(courseStr: $courseStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.courseChanged'))
      ..add(DiagnosticsProperty('courseStr', courseStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseChanged &&
            (identical(other.courseStr, courseStr) ||
                const DeepCollectionEquality()
                    .equals(other.courseStr, courseStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseStr);

  @JsonKey(ignore: true)
  @override
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      __$CourseChangedCopyWithImpl<_CourseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return courseChanged(courseStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(courseStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return courseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(this);
    }
    return orElse();
  }
}

abstract class _CourseChanged implements ProfileFormEvent {
  const factory _CourseChanged(String courseStr) = _$_CourseChanged;

  String get courseStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bioStr});
}

/// @nodoc
class __$BioChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object? bioStr = freezed,
  }) {
    return _then(_BioChanged(
      bioStr == freezed
          ? _value.bioStr
          : bioStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BioChanged with DiagnosticableTreeMixin implements _BioChanged {
  const _$_BioChanged(this.bioStr);

  @override
  final String bioStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.bioChanged(bioStr: $bioStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.bioChanged'))
      ..add(DiagnosticsProperty('bioStr', bioStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bioStr, bioStr) ||
                const DeepCollectionEquality().equals(other.bioStr, bioStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bioStr);

  @JsonKey(ignore: true)
  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return bioChanged(bioStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bioStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements ProfileFormEvent {
  const factory _BioChanged(String bioStr) = _$_BioChanged;

  String get bioStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$GetProfileCopyWith<$Res> {
  factory _$GetProfileCopyWith(
          _GetProfile value, $Res Function(_GetProfile) then) =
      __$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$GetProfileCopyWith<$Res> {
  __$GetProfileCopyWithImpl(
      _GetProfile _value, $Res Function(_GetProfile) _then)
      : super(_value, (v) => _then(v as _GetProfile));

  @override
  _GetProfile get _value => super._value as _GetProfile;
}

/// @nodoc

class _$_GetProfile with DiagnosticableTreeMixin implements _GetProfile {
  const _$_GetProfile();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.getProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileFormEvent.getProfile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileFormEvent {
  const factory _GetProfile() = _$_GetProfile;
}

/// @nodoc
abstract class _$SearchedModuleCopyWith<$Res> {
  factory _$SearchedModuleCopyWith(
          _SearchedModule value, $Res Function(_SearchedModule) then) =
      __$SearchedModuleCopyWithImpl<$Res>;
  $Res call({String searchStr});
}

/// @nodoc
class __$SearchedModuleCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SearchedModuleCopyWith<$Res> {
  __$SearchedModuleCopyWithImpl(
      _SearchedModule _value, $Res Function(_SearchedModule) _then)
      : super(_value, (v) => _then(v as _SearchedModule));

  @override
  _SearchedModule get _value => super._value as _SearchedModule;

  @override
  $Res call({
    Object? searchStr = freezed,
  }) {
    return _then(_SearchedModule(
      searchStr == freezed
          ? _value.searchStr
          : searchStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchedModule
    with DiagnosticableTreeMixin
    implements _SearchedModule {
  const _$_SearchedModule(this.searchStr);

  @override
  final String searchStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.searchedModule(searchStr: $searchStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.searchedModule'))
      ..add(DiagnosticsProperty('searchStr', searchStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchedModule &&
            (identical(other.searchStr, searchStr) ||
                const DeepCollectionEquality()
                    .equals(other.searchStr, searchStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchStr);

  @JsonKey(ignore: true)
  @override
  _$SearchedModuleCopyWith<_SearchedModule> get copyWith =>
      __$SearchedModuleCopyWithImpl<_SearchedModule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return searchedModule(searchStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (searchedModule != null) {
      return searchedModule(searchStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return searchedModule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (searchedModule != null) {
      return searchedModule(this);
    }
    return orElse();
  }
}

abstract class _SearchedModule implements ProfileFormEvent {
  const factory _SearchedModule(String searchStr) = _$_SearchedModule;

  String get searchStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchedModuleCopyWith<_SearchedModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedModuleCopyWith<$Res> {
  factory _$AddedModuleCopyWith(
          _AddedModule value, $Res Function(_AddedModule) then) =
      __$AddedModuleCopyWithImpl<$Res>;
  $Res call({String moduleStr});
}

/// @nodoc
class __$AddedModuleCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$AddedModuleCopyWith<$Res> {
  __$AddedModuleCopyWithImpl(
      _AddedModule _value, $Res Function(_AddedModule) _then)
      : super(_value, (v) => _then(v as _AddedModule));

  @override
  _AddedModule get _value => super._value as _AddedModule;

  @override
  $Res call({
    Object? moduleStr = freezed,
  }) {
    return _then(_AddedModule(
      moduleStr == freezed
          ? _value.moduleStr
          : moduleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddedModule with DiagnosticableTreeMixin implements _AddedModule {
  const _$_AddedModule(this.moduleStr);

  @override
  final String moduleStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.addedModule(moduleStr: $moduleStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.addedModule'))
      ..add(DiagnosticsProperty('moduleStr', moduleStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedModule &&
            (identical(other.moduleStr, moduleStr) ||
                const DeepCollectionEquality()
                    .equals(other.moduleStr, moduleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moduleStr);

  @JsonKey(ignore: true)
  @override
  _$AddedModuleCopyWith<_AddedModule> get copyWith =>
      __$AddedModuleCopyWithImpl<_AddedModule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return addedModule(moduleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (addedModule != null) {
      return addedModule(moduleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return addedModule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (addedModule != null) {
      return addedModule(this);
    }
    return orElse();
  }
}

abstract class _AddedModule implements ProfileFormEvent {
  const factory _AddedModule(String moduleStr) = _$_AddedModule;

  String get moduleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddedModuleCopyWith<_AddedModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedModuleCopyWith<$Res> {
  factory _$RemovedModuleCopyWith(
          _RemovedModule value, $Res Function(_RemovedModule) then) =
      __$RemovedModuleCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$RemovedModuleCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$RemovedModuleCopyWith<$Res> {
  __$RemovedModuleCopyWithImpl(
      _RemovedModule _value, $Res Function(_RemovedModule) _then)
      : super(_value, (v) => _then(v as _RemovedModule));

  @override
  _RemovedModule get _value => super._value as _RemovedModule;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_RemovedModule(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemovedModule with DiagnosticableTreeMixin implements _RemovedModule {
  const _$_RemovedModule(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.removedModule(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.removedModule'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedModule &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$RemovedModuleCopyWith<_RemovedModule> get copyWith =>
      __$RemovedModuleCopyWithImpl<_RemovedModule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
    required TResult Function(String searchStr) searchedModule,
    required TResult Function(String moduleStr) addedModule,
    required TResult Function(int index) removedModule,
  }) {
    return removedModule(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    TResult Function(String searchStr)? searchedModule,
    TResult Function(String moduleStr)? addedModule,
    TResult Function(int index)? removedModule,
    required TResult orElse(),
  }) {
    if (removedModule != null) {
      return removedModule(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_SearchedModule value) searchedModule,
    required TResult Function(_AddedModule value) addedModule,
    required TResult Function(_RemovedModule value) removedModule,
  }) {
    return removedModule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_SearchedModule value)? searchedModule,
    TResult Function(_AddedModule value)? addedModule,
    TResult Function(_RemovedModule value)? removedModule,
    required TResult orElse(),
  }) {
    if (removedModule != null) {
      return removedModule(this);
    }
    return orElse();
  }
}

abstract class _RemovedModule implements ProfileFormEvent {
  const factory _RemovedModule(int index) = _$_RemovedModule;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemovedModuleCopyWith<_RemovedModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

  _ProfileFormState call(
      {required Either<DataFailure, String> photoUrl,
      required Profile profile,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      required bool isLoading,
      required Either<DataFailure, Profile> currentProfile,
      required String currentUsername,
      required bool showErrorMessages,
      required Either<DataFailure, List<String>> moduleSuggestions,
      required bool refreshTags,
      required bool usernameChanged}) {
    return _ProfileFormState(
      photoUrl: photoUrl,
      profile: profile,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      isLoading: isLoading,
      currentProfile: currentProfile,
      currentUsername: currentUsername,
      showErrorMessages: showErrorMessages,
      moduleSuggestions: moduleSuggestions,
      refreshTags: refreshTags,
      usernameChanged: usernameChanged,
    );
  }
}

/// @nodoc
const $ProfileFormState = _$ProfileFormStateTearOff();

/// @nodoc
mixin _$ProfileFormState {
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<DataFailure, Profile> get currentProfile =>
      throw _privateConstructorUsedError;
  String get currentUsername => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Either<DataFailure, List<String>> get moduleSuggestions =>
      throw _privateConstructorUsedError;
  bool get refreshTags => throw _privateConstructorUsedError;
  bool get usernameChanged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, String> photoUrl,
      Profile profile,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      bool isLoading,
      Either<DataFailure, Profile> currentProfile,
      String currentUsername,
      bool showErrorMessages,
      Either<DataFailure, List<String>> moduleSuggestions,
      bool refreshTags,
      bool usernameChanged});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? profile = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? currentProfile = freezed,
    Object? currentUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? moduleSuggestions = freezed,
    Object? refreshTags = freezed,
    Object? usernameChanged = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfile: currentProfile == freezed
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      currentUsername: currentUsername == freezed
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      moduleSuggestions: moduleSuggestions == freezed
          ? _value.moduleSuggestions
          : moduleSuggestions // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<String>>,
      refreshTags: refreshTags == freezed
          ? _value.refreshTags
          : refreshTags // ignore: cast_nullable_to_non_nullable
              as bool,
      usernameChanged: usernameChanged == freezed
          ? _value.usernameChanged
          : usernameChanged // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, String> photoUrl,
      Profile profile,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      bool isLoading,
      Either<DataFailure, Profile> currentProfile,
      String currentUsername,
      bool showErrorMessages,
      Either<DataFailure, List<String>> moduleSuggestions,
      bool refreshTags,
      bool usernameChanged});

  @override
  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? profile = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? currentProfile = freezed,
    Object? currentUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? moduleSuggestions = freezed,
    Object? refreshTags = freezed,
    Object? usernameChanged = freezed,
  }) {
    return _then(_ProfileFormState(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfile: currentProfile == freezed
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      currentUsername: currentUsername == freezed
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      moduleSuggestions: moduleSuggestions == freezed
          ? _value.moduleSuggestions
          : moduleSuggestions // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<String>>,
      refreshTags: refreshTags == freezed
          ? _value.refreshTags
          : refreshTags // ignore: cast_nullable_to_non_nullable
              as bool,
      usernameChanged: usernameChanged == freezed
          ? _value.usernameChanged
          : usernameChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileFormState
    with DiagnosticableTreeMixin
    implements _ProfileFormState {
  const _$_ProfileFormState(
      {required this.photoUrl,
      required this.profile,
      required this.isSaving,
      required this.saveFailureOrSuccessOption,
      required this.isLoading,
      required this.currentProfile,
      required this.currentUsername,
      required this.showErrorMessages,
      required this.moduleSuggestions,
      required this.refreshTags,
      required this.usernameChanged});

  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final Profile profile;
  @override
  final bool isSaving;
  @override
  final Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final Either<DataFailure, Profile> currentProfile;
  @override
  final String currentUsername;
  @override
  final bool showErrorMessages;
  @override
  final Either<DataFailure, List<String>> moduleSuggestions;
  @override
  final bool refreshTags;
  @override
  final bool usernameChanged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormState(photoUrl: $photoUrl, profile: $profile, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, isLoading: $isLoading, currentProfile: $currentProfile, currentUsername: $currentUsername, showErrorMessages: $showErrorMessages, moduleSuggestions: $moduleSuggestions, refreshTags: $refreshTags, usernameChanged: $usernameChanged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormState'))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('profile', profile))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('currentProfile', currentProfile))
      ..add(DiagnosticsProperty('currentUsername', currentUsername))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('moduleSuggestions', moduleSuggestions))
      ..add(DiagnosticsProperty('refreshTags', refreshTags))
      ..add(DiagnosticsProperty('usernameChanged', usernameChanged));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentProfile, currentProfile) ||
                const DeepCollectionEquality()
                    .equals(other.currentProfile, currentProfile)) &&
            (identical(other.currentUsername, currentUsername) ||
                const DeepCollectionEquality()
                    .equals(other.currentUsername, currentUsername)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.moduleSuggestions, moduleSuggestions) ||
                const DeepCollectionEquality()
                    .equals(other.moduleSuggestions, moduleSuggestions)) &&
            (identical(other.refreshTags, refreshTags) ||
                const DeepCollectionEquality()
                    .equals(other.refreshTags, refreshTags)) &&
            (identical(other.usernameChanged, usernameChanged) ||
                const DeepCollectionEquality()
                    .equals(other.usernameChanged, usernameChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentProfile) ^
      const DeepCollectionEquality().hash(currentUsername) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(moduleSuggestions) ^
      const DeepCollectionEquality().hash(refreshTags) ^
      const DeepCollectionEquality().hash(usernameChanged);

  @JsonKey(ignore: true)
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required Either<DataFailure, String> photoUrl,
      required Profile profile,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      required bool isLoading,
      required Either<DataFailure, Profile> currentProfile,
      required String currentUsername,
      required bool showErrorMessages,
      required Either<DataFailure, List<String>> moduleSuggestions,
      required bool refreshTags,
      required bool usernameChanged}) = _$_ProfileFormState;

  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, Profile> get currentProfile =>
      throw _privateConstructorUsedError;
  @override
  String get currentUsername => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, List<String>> get moduleSuggestions =>
      throw _privateConstructorUsedError;
  @override
  bool get refreshTags => throw _privateConstructorUsedError;
  @override
  bool get usernameChanged => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
