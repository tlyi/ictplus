// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'following_feed_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowingFeedDto _$FollowingFeedDtoFromJson(Map<String, dynamic> json) {
  return _FollowingFeedDto.fromJson(json);
}

/// @nodoc
class _$FollowingFeedDtoTearOff {
  const _$FollowingFeedDtoTearOff();

  _FollowingFeedDto call(
      {required String forumId,
      required String posterUserId,
      required String timestamp}) {
    return _FollowingFeedDto(
      forumId: forumId,
      posterUserId: posterUserId,
      timestamp: timestamp,
    );
  }

  FollowingFeedDto fromJson(Map<String, Object> json) {
    return FollowingFeedDto.fromJson(json);
  }
}

/// @nodoc
const $FollowingFeedDto = _$FollowingFeedDtoTearOff();

/// @nodoc
mixin _$FollowingFeedDto {
  String get forumId => throw _privateConstructorUsedError;
  String get posterUserId => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingFeedDtoCopyWith<FollowingFeedDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingFeedDtoCopyWith<$Res> {
  factory $FollowingFeedDtoCopyWith(
          FollowingFeedDto value, $Res Function(FollowingFeedDto) then) =
      _$FollowingFeedDtoCopyWithImpl<$Res>;
  $Res call({String forumId, String posterUserId, String timestamp});
}

/// @nodoc
class _$FollowingFeedDtoCopyWithImpl<$Res>
    implements $FollowingFeedDtoCopyWith<$Res> {
  _$FollowingFeedDtoCopyWithImpl(this._value, this._then);

  final FollowingFeedDto _value;
  // ignore: unused_field
  final $Res Function(FollowingFeedDto) _then;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? posterUserId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      posterUserId: posterUserId == freezed
          ? _value.posterUserId
          : posterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowingFeedDtoCopyWith<$Res>
    implements $FollowingFeedDtoCopyWith<$Res> {
  factory _$FollowingFeedDtoCopyWith(
          _FollowingFeedDto value, $Res Function(_FollowingFeedDto) then) =
      __$FollowingFeedDtoCopyWithImpl<$Res>;
  @override
  $Res call({String forumId, String posterUserId, String timestamp});
}

/// @nodoc
class __$FollowingFeedDtoCopyWithImpl<$Res>
    extends _$FollowingFeedDtoCopyWithImpl<$Res>
    implements _$FollowingFeedDtoCopyWith<$Res> {
  __$FollowingFeedDtoCopyWithImpl(
      _FollowingFeedDto _value, $Res Function(_FollowingFeedDto) _then)
      : super(_value, (v) => _then(v as _FollowingFeedDto));

  @override
  _FollowingFeedDto get _value => super._value as _FollowingFeedDto;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? posterUserId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_FollowingFeedDto(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      posterUserId: posterUserId == freezed
          ? _value.posterUserId
          : posterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowingFeedDto extends _FollowingFeedDto {
  const _$_FollowingFeedDto(
      {required this.forumId,
      required this.posterUserId,
      required this.timestamp})
      : super._();

  factory _$_FollowingFeedDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FollowingFeedDtoFromJson(json);

  @override
  final String forumId;
  @override
  final String posterUserId;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'FollowingFeedDto(forumId: $forumId, posterUserId: $posterUserId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowingFeedDto &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.posterUserId, posterUserId) ||
                const DeepCollectionEquality()
                    .equals(other.posterUserId, posterUserId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(posterUserId) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$FollowingFeedDtoCopyWith<_FollowingFeedDto> get copyWith =>
      __$FollowingFeedDtoCopyWithImpl<_FollowingFeedDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FollowingFeedDtoToJson(this);
  }
}

abstract class _FollowingFeedDto extends FollowingFeedDto {
  const factory _FollowingFeedDto(
      {required String forumId,
      required String posterUserId,
      required String timestamp}) = _$_FollowingFeedDto;
  const _FollowingFeedDto._() : super._();

  factory _FollowingFeedDto.fromJson(Map<String, dynamic> json) =
      _$_FollowingFeedDto.fromJson;

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  String get posterUserId => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowingFeedDtoCopyWith<_FollowingFeedDto> get copyWith =>
      throw _privateConstructorUsedError;
}
