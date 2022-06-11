// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call(
      {required String photoUrl,
      required String username,
      required String course,
      required String bio,
      required List<String> modules,
      required String uuid,
      required List<String> forumsPosted,
      required List<String> following,
      required List<String> followedBy}) {
    return _ProfileDto(
      photoUrl: photoUrl,
      username: username,
      course: course,
      bio: bio,
      modules: modules,
      uuid: uuid,
      forumsPosted: forumsPosted,
      following: following,
      followedBy: followedBy,
    );
  }

  ProfileDto fromJson(Map<String, Object> json) {
    return ProfileDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileDto = _$ProfileDtoTearOff();

/// @nodoc
mixin _$ProfileDto {
  String get photoUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get course => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get modules => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  List<String> get forumsPosted => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  List<String> get followedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String photoUrl,
      String username,
      String course,
      String bio,
      List<String> modules,
      String uuid,
      List<String> forumsPosted,
      List<String> following,
      List<String> followedBy});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? modules = freezed,
    Object? uuid = freezed,
    Object? forumsPosted = freezed,
    Object? following = freezed,
    Object? followedBy = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      modules: modules == freezed
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      forumsPosted: forumsPosted == freezed
          ? _value.forumsPosted
          : forumsPosted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followedBy: followedBy == freezed
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) then) =
      __$ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String photoUrl,
      String username,
      String course,
      String bio,
      List<String> modules,
      String uuid,
      List<String> forumsPosted,
      List<String> following,
      List<String> followedBy});
}

/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res> extends _$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(
      _ProfileDto _value, $Res Function(_ProfileDto) _then)
      : super(_value, (v) => _then(v as _ProfileDto));

  @override
  _ProfileDto get _value => super._value as _ProfileDto;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? modules = freezed,
    Object? uuid = freezed,
    Object? forumsPosted = freezed,
    Object? following = freezed,
    Object? followedBy = freezed,
  }) {
    return _then(_ProfileDto(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      modules: modules == freezed
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      forumsPosted: forumsPosted == freezed
          ? _value.forumsPosted
          : forumsPosted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followedBy: followedBy == freezed
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDto extends _ProfileDto {
  const _$_ProfileDto(
      {required this.photoUrl,
      required this.username,
      required this.course,
      required this.bio,
      required this.modules,
      required this.uuid,
      required this.forumsPosted,
      required this.following,
      required this.followedBy})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDtoFromJson(json);

  @override
  final String photoUrl;
  @override
  final String username;
  @override
  final String course;
  @override
  final String bio;
  @override
  final List<String> modules;
  @override
  final String uuid;
  @override
  final List<String> forumsPosted;
  @override
  final List<String> following;
  @override
  final List<String> followedBy;

  @override
  String toString() {
    return 'ProfileDto(photoUrl: $photoUrl, username: $username, course: $course, bio: $bio, modules: $modules, uuid: $uuid, forumsPosted: $forumsPosted, following: $following, followedBy: $followedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDto &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.modules, modules) ||
                const DeepCollectionEquality()
                    .equals(other.modules, modules)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.forumsPosted, forumsPosted) ||
                const DeepCollectionEquality()
                    .equals(other.forumsPosted, forumsPosted)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.followedBy, followedBy) ||
                const DeepCollectionEquality()
                    .equals(other.followedBy, followedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(modules) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(forumsPosted) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followedBy);

  @JsonKey(ignore: true)
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  const factory _ProfileDto(
      {required String photoUrl,
      required String username,
      required String course,
      required String bio,
      required List<String> modules,
      required String uuid,
      required List<String> forumsPosted,
      required List<String> following,
      required List<String> followedBy}) = _$_ProfileDto;
  const _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get course => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  List<String> get modules => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  List<String> get forumsPosted => throw _privateConstructorUsedError;
  @override
  List<String> get following => throw _privateConstructorUsedError;
  @override
  List<String> get followedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
