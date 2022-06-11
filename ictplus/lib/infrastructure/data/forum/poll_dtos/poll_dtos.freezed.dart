// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollDto _$PollDtoFromJson(Map<String, dynamic> json) {
  return _PollDto.fromJson(json);
}

/// @nodoc
class _$PollDtoTearOff {
  const _$PollDtoTearOff();

  _PollDto call(
      {required int numOptions,
      required String creatorUuid,
      required String title,
      required List<String> optionList,
      required List<double> voteList,
      required Map<String, int> usersWhoVoted}) {
    return _PollDto(
      numOptions: numOptions,
      creatorUuid: creatorUuid,
      title: title,
      optionList: optionList,
      voteList: voteList,
      usersWhoVoted: usersWhoVoted,
    );
  }

  PollDto fromJson(Map<String, Object> json) {
    return PollDto.fromJson(json);
  }
}

/// @nodoc
const $PollDto = _$PollDtoTearOff();

/// @nodoc
mixin _$PollDto {
  int get numOptions => throw _privateConstructorUsedError;
  String get creatorUuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get optionList => throw _privateConstructorUsedError;
  List<double> get voteList => throw _privateConstructorUsedError;
  Map<String, int> get usersWhoVoted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollDtoCopyWith<PollDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollDtoCopyWith<$Res> {
  factory $PollDtoCopyWith(PollDto value, $Res Function(PollDto) then) =
      _$PollDtoCopyWithImpl<$Res>;
  $Res call(
      {int numOptions,
      String creatorUuid,
      String title,
      List<String> optionList,
      List<double> voteList,
      Map<String, int> usersWhoVoted});
}

/// @nodoc
class _$PollDtoCopyWithImpl<$Res> implements $PollDtoCopyWith<$Res> {
  _$PollDtoCopyWithImpl(this._value, this._then);

  final PollDto _value;
  // ignore: unused_field
  final $Res Function(PollDto) _then;

  @override
  $Res call({
    Object? numOptions = freezed,
    Object? creatorUuid = freezed,
    Object? title = freezed,
    Object? optionList = freezed,
    Object? voteList = freezed,
    Object? usersWhoVoted = freezed,
  }) {
    return _then(_value.copyWith(
      numOptions: numOptions == freezed
          ? _value.numOptions
          : numOptions // ignore: cast_nullable_to_non_nullable
              as int,
      creatorUuid: creatorUuid == freezed
          ? _value.creatorUuid
          : creatorUuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      optionList: optionList == freezed
          ? _value.optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voteList: voteList == freezed
          ? _value.voteList
          : voteList // ignore: cast_nullable_to_non_nullable
              as List<double>,
      usersWhoVoted: usersWhoVoted == freezed
          ? _value.usersWhoVoted
          : usersWhoVoted // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$PollDtoCopyWith<$Res> implements $PollDtoCopyWith<$Res> {
  factory _$PollDtoCopyWith(_PollDto value, $Res Function(_PollDto) then) =
      __$PollDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numOptions,
      String creatorUuid,
      String title,
      List<String> optionList,
      List<double> voteList,
      Map<String, int> usersWhoVoted});
}

/// @nodoc
class __$PollDtoCopyWithImpl<$Res> extends _$PollDtoCopyWithImpl<$Res>
    implements _$PollDtoCopyWith<$Res> {
  __$PollDtoCopyWithImpl(_PollDto _value, $Res Function(_PollDto) _then)
      : super(_value, (v) => _then(v as _PollDto));

  @override
  _PollDto get _value => super._value as _PollDto;

  @override
  $Res call({
    Object? numOptions = freezed,
    Object? creatorUuid = freezed,
    Object? title = freezed,
    Object? optionList = freezed,
    Object? voteList = freezed,
    Object? usersWhoVoted = freezed,
  }) {
    return _then(_PollDto(
      numOptions: numOptions == freezed
          ? _value.numOptions
          : numOptions // ignore: cast_nullable_to_non_nullable
              as int,
      creatorUuid: creatorUuid == freezed
          ? _value.creatorUuid
          : creatorUuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      optionList: optionList == freezed
          ? _value.optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voteList: voteList == freezed
          ? _value.voteList
          : voteList // ignore: cast_nullable_to_non_nullable
              as List<double>,
      usersWhoVoted: usersWhoVoted == freezed
          ? _value.usersWhoVoted
          : usersWhoVoted // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollDto extends _PollDto {
  const _$_PollDto(
      {required this.numOptions,
      required this.creatorUuid,
      required this.title,
      required this.optionList,
      required this.voteList,
      required this.usersWhoVoted})
      : super._();

  factory _$_PollDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PollDtoFromJson(json);

  @override
  final int numOptions;
  @override
  final String creatorUuid;
  @override
  final String title;
  @override
  final List<String> optionList;
  @override
  final List<double> voteList;
  @override
  final Map<String, int> usersWhoVoted;

  @override
  String toString() {
    return 'PollDto(numOptions: $numOptions, creatorUuid: $creatorUuid, title: $title, optionList: $optionList, voteList: $voteList, usersWhoVoted: $usersWhoVoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollDto &&
            (identical(other.numOptions, numOptions) ||
                const DeepCollectionEquality()
                    .equals(other.numOptions, numOptions)) &&
            (identical(other.creatorUuid, creatorUuid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUuid, creatorUuid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.optionList, optionList) ||
                const DeepCollectionEquality()
                    .equals(other.optionList, optionList)) &&
            (identical(other.voteList, voteList) ||
                const DeepCollectionEquality()
                    .equals(other.voteList, voteList)) &&
            (identical(other.usersWhoVoted, usersWhoVoted) ||
                const DeepCollectionEquality()
                    .equals(other.usersWhoVoted, usersWhoVoted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numOptions) ^
      const DeepCollectionEquality().hash(creatorUuid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(optionList) ^
      const DeepCollectionEquality().hash(voteList) ^
      const DeepCollectionEquality().hash(usersWhoVoted);

  @JsonKey(ignore: true)
  @override
  _$PollDtoCopyWith<_PollDto> get copyWith =>
      __$PollDtoCopyWithImpl<_PollDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PollDtoToJson(this);
  }
}

abstract class _PollDto extends PollDto {
  const factory _PollDto(
      {required int numOptions,
      required String creatorUuid,
      required String title,
      required List<String> optionList,
      required List<double> voteList,
      required Map<String, int> usersWhoVoted}) = _$_PollDto;
  const _PollDto._() : super._();

  factory _PollDto.fromJson(Map<String, dynamic> json) = _$_PollDto.fromJson;

  @override
  int get numOptions => throw _privateConstructorUsedError;
  @override
  String get creatorUuid => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<String> get optionList => throw _privateConstructorUsedError;
  @override
  List<double> get voteList => throw _privateConstructorUsedError;
  @override
  Map<String, int> get usersWhoVoted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollDtoCopyWith<_PollDto> get copyWith =>
      throw _privateConstructorUsedError;
}
