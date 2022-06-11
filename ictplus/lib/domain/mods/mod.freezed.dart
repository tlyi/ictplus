// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModTearOff {
  const _$ModTearOff();

  _Mod call(
      {required String moduleCode,
      required String moduleTitle,
      required String lastPosted}) {
    return _Mod(
      moduleCode: moduleCode,
      moduleTitle: moduleTitle,
      lastPosted: lastPosted,
    );
  }
}

/// @nodoc
const $Mod = _$ModTearOff();

/// @nodoc
mixin _$Mod {
  String get moduleCode => throw _privateConstructorUsedError;
  String get moduleTitle => throw _privateConstructorUsedError;
  String get lastPosted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModCopyWith<Mod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModCopyWith<$Res> {
  factory $ModCopyWith(Mod value, $Res Function(Mod) then) =
      _$ModCopyWithImpl<$Res>;
  $Res call({String moduleCode, String moduleTitle, String lastPosted});
}

/// @nodoc
class _$ModCopyWithImpl<$Res> implements $ModCopyWith<$Res> {
  _$ModCopyWithImpl(this._value, this._then);

  final Mod _value;
  // ignore: unused_field
  final $Res Function(Mod) _then;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? moduleTitle = freezed,
    Object? lastPosted = freezed,
  }) {
    return _then(_value.copyWith(
      moduleCode: moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      moduleTitle: moduleTitle == freezed
          ? _value.moduleTitle
          : moduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastPosted: lastPosted == freezed
          ? _value.lastPosted
          : lastPosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ModCopyWith<$Res> implements $ModCopyWith<$Res> {
  factory _$ModCopyWith(_Mod value, $Res Function(_Mod) then) =
      __$ModCopyWithImpl<$Res>;
  @override
  $Res call({String moduleCode, String moduleTitle, String lastPosted});
}

/// @nodoc
class __$ModCopyWithImpl<$Res> extends _$ModCopyWithImpl<$Res>
    implements _$ModCopyWith<$Res> {
  __$ModCopyWithImpl(_Mod _value, $Res Function(_Mod) _then)
      : super(_value, (v) => _then(v as _Mod));

  @override
  _Mod get _value => super._value as _Mod;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? moduleTitle = freezed,
    Object? lastPosted = freezed,
  }) {
    return _then(_Mod(
      moduleCode: moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      moduleTitle: moduleTitle == freezed
          ? _value.moduleTitle
          : moduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastPosted: lastPosted == freezed
          ? _value.lastPosted
          : lastPosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Mod extends _Mod {
  const _$_Mod(
      {required this.moduleCode,
      required this.moduleTitle,
      required this.lastPosted})
      : super._();

  @override
  final String moduleCode;
  @override
  final String moduleTitle;
  @override
  final String lastPosted;

  @override
  String toString() {
    return 'Mod(moduleCode: $moduleCode, moduleTitle: $moduleTitle, lastPosted: $lastPosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mod &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.moduleTitle, moduleTitle) ||
                const DeepCollectionEquality()
                    .equals(other.moduleTitle, moduleTitle)) &&
            (identical(other.lastPosted, lastPosted) ||
                const DeepCollectionEquality()
                    .equals(other.lastPosted, lastPosted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(moduleTitle) ^
      const DeepCollectionEquality().hash(lastPosted);

  @JsonKey(ignore: true)
  @override
  _$ModCopyWith<_Mod> get copyWith =>
      __$ModCopyWithImpl<_Mod>(this, _$identity);
}

abstract class _Mod extends Mod {
  const factory _Mod(
      {required String moduleCode,
      required String moduleTitle,
      required String lastPosted}) = _$_Mod;
  const _Mod._() : super._();

  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get moduleTitle => throw _privateConstructorUsedError;
  @override
  String get lastPosted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModCopyWith<_Mod> get copyWith => throw _privateConstructorUsedError;
}
