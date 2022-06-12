// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'myevents_fp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForcePrepTearOff {
  const _$ForcePrepTearOff();

  _ForcePrep call({required UniqueId id, required List<String> items}) {
    return _ForcePrep(
      id: id,
      items: items,
    );
  }
}

/// @nodoc
const $ForcePrep = _$ForcePrepTearOff();

/// @nodoc
mixin _$ForcePrep {
  UniqueId get id =>
      throw _privateConstructorUsedError; //@required TODO picture?
  List<String> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForcePrepCopyWith<ForcePrep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForcePrepCopyWith<$Res> {
  factory $ForcePrepCopyWith(ForcePrep value, $Res Function(ForcePrep) then) =
      _$ForcePrepCopyWithImpl<$Res>;
  $Res call({UniqueId id, List<String> items});
}

/// @nodoc
class _$ForcePrepCopyWithImpl<$Res> implements $ForcePrepCopyWith<$Res> {
  _$ForcePrepCopyWithImpl(this._value, this._then);

  final ForcePrep _value;
  // ignore: unused_field
  final $Res Function(ForcePrep) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ForcePrepCopyWith<$Res> implements $ForcePrepCopyWith<$Res> {
  factory _$ForcePrepCopyWith(
          _ForcePrep value, $Res Function(_ForcePrep) then) =
      __$ForcePrepCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, List<String> items});
}

/// @nodoc
class __$ForcePrepCopyWithImpl<$Res> extends _$ForcePrepCopyWithImpl<$Res>
    implements _$ForcePrepCopyWith<$Res> {
  __$ForcePrepCopyWithImpl(_ForcePrep _value, $Res Function(_ForcePrep) _then)
      : super(_value, (v) => _then(v as _ForcePrep));

  @override
  _ForcePrep get _value => super._value as _ForcePrep;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
  }) {
    return _then(_ForcePrep(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ForcePrep implements _ForcePrep {
  const _$_ForcePrep({required this.id, required this.items});

  @override
  final UniqueId id;
  @override //@required TODO picture?
  final List<String> items;

  @override
  String toString() {
    return 'ForcePrep(id: $id, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForcePrep &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ForcePrepCopyWith<_ForcePrep> get copyWith =>
      __$ForcePrepCopyWithImpl<_ForcePrep>(this, _$identity);
}

abstract class _ForcePrep implements ForcePrep {
  const factory _ForcePrep(
      {required UniqueId id, required List<String> items}) = _$_ForcePrep;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override //@required TODO picture?
  List<String> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForcePrepCopyWith<_ForcePrep> get copyWith =>
      throw _privateConstructorUsedError;
}
