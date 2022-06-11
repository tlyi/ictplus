// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mod_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModDto _$ModDtoFromJson(Map<String, dynamic> json) {
  return _ModDto.fromJson(json);
}

/// @nodoc
class _$ModDtoTearOff {
  const _$ModDtoTearOff();

  _ModDto call(
      {required String moduleCode,
      required String title,
      required List<int> semesters,
      required String lastPosted}) {
    return _ModDto(
      moduleCode: moduleCode,
      title: title,
      semesters: semesters,
      lastPosted: lastPosted,
    );
  }

  ModDto fromJson(Map<String, Object> json) {
    return ModDto.fromJson(json);
  }
}

/// @nodoc
const $ModDto = _$ModDtoTearOff();

/// @nodoc
mixin _$ModDto {
  String get moduleCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<int> get semesters => throw _privateConstructorUsedError;
  String get lastPosted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModDtoCopyWith<ModDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModDtoCopyWith<$Res> {
  factory $ModDtoCopyWith(ModDto value, $Res Function(ModDto) then) =
      _$ModDtoCopyWithImpl<$Res>;
  $Res call(
      {String moduleCode,
      String title,
      List<int> semesters,
      String lastPosted});
}

/// @nodoc
class _$ModDtoCopyWithImpl<$Res> implements $ModDtoCopyWith<$Res> {
  _$ModDtoCopyWithImpl(this._value, this._then);

  final ModDto _value;
  // ignore: unused_field
  final $Res Function(ModDto) _then;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? title = freezed,
    Object? semesters = freezed,
    Object? lastPosted = freezed,
  }) {
    return _then(_value.copyWith(
      moduleCode: moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      semesters: semesters == freezed
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastPosted: lastPosted == freezed
          ? _value.lastPosted
          : lastPosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ModDtoCopyWith<$Res> implements $ModDtoCopyWith<$Res> {
  factory _$ModDtoCopyWith(_ModDto value, $Res Function(_ModDto) then) =
      __$ModDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String moduleCode,
      String title,
      List<int> semesters,
      String lastPosted});
}

/// @nodoc
class __$ModDtoCopyWithImpl<$Res> extends _$ModDtoCopyWithImpl<$Res>
    implements _$ModDtoCopyWith<$Res> {
  __$ModDtoCopyWithImpl(_ModDto _value, $Res Function(_ModDto) _then)
      : super(_value, (v) => _then(v as _ModDto));

  @override
  _ModDto get _value => super._value as _ModDto;

  @override
  $Res call({
    Object? moduleCode = freezed,
    Object? title = freezed,
    Object? semesters = freezed,
    Object? lastPosted = freezed,
  }) {
    return _then(_ModDto(
      moduleCode: moduleCode == freezed
          ? _value.moduleCode
          : moduleCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      semesters: semesters == freezed
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastPosted: lastPosted == freezed
          ? _value.lastPosted
          : lastPosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModDto extends _ModDto {
  const _$_ModDto(
      {required this.moduleCode,
      required this.title,
      required this.semesters,
      required this.lastPosted})
      : super._();

  factory _$_ModDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ModDtoFromJson(json);

  @override
  final String moduleCode;
  @override
  final String title;
  @override
  final List<int> semesters;
  @override
  final String lastPosted;

  @override
  String toString() {
    return 'ModDto(moduleCode: $moduleCode, title: $title, semesters: $semesters, lastPosted: $lastPosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModDto &&
            (identical(other.moduleCode, moduleCode) ||
                const DeepCollectionEquality()
                    .equals(other.moduleCode, moduleCode)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.semesters, semesters) ||
                const DeepCollectionEquality()
                    .equals(other.semesters, semesters)) &&
            (identical(other.lastPosted, lastPosted) ||
                const DeepCollectionEquality()
                    .equals(other.lastPosted, lastPosted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moduleCode) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(semesters) ^
      const DeepCollectionEquality().hash(lastPosted);

  @JsonKey(ignore: true)
  @override
  _$ModDtoCopyWith<_ModDto> get copyWith =>
      __$ModDtoCopyWithImpl<_ModDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ModDtoToJson(this);
  }
}

abstract class _ModDto extends ModDto {
  const factory _ModDto(
      {required String moduleCode,
      required String title,
      required List<int> semesters,
      required String lastPosted}) = _$_ModDto;
  const _ModDto._() : super._();

  factory _ModDto.fromJson(Map<String, dynamic> json) = _$_ModDto.fromJson;

  @override
  String get moduleCode => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<int> get semesters => throw _privateConstructorUsedError;
  @override
  String get lastPosted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModDtoCopyWith<_ModDto> get copyWith => throw _privateConstructorUsedError;
}
