// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_chat_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationChatDto _$LocationChatDtoFromJson(Map<String, dynamic> json) {
  return _LocationChatDto.fromJson(json);
}

/// @nodoc
class _$LocationChatDtoTearOff {
  const _$LocationChatDtoTearOff();

  _LocationChatDto call(
      {required String chatId,
      required String creatorUserId,
      required String lastMessage,
      required String lastSenderId,
      required String chatTitle,
      required String timestamp,
      required double longitude,
      required double latitude,
      required List<String> keywords}) {
    return _LocationChatDto(
      chatId: chatId,
      creatorUserId: creatorUserId,
      lastMessage: lastMessage,
      lastSenderId: lastSenderId,
      chatTitle: chatTitle,
      timestamp: timestamp,
      longitude: longitude,
      latitude: latitude,
      keywords: keywords,
    );
  }

  LocationChatDto fromJson(Map<String, Object> json) {
    return LocationChatDto.fromJson(json);
  }
}

/// @nodoc
const $LocationChatDto = _$LocationChatDtoTearOff();

/// @nodoc
mixin _$LocationChatDto {
  String get chatId => throw _privateConstructorUsedError;
  String get creatorUserId => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  String get chatTitle => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationChatDtoCopyWith<LocationChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatDtoCopyWith<$Res> {
  factory $LocationChatDtoCopyWith(
          LocationChatDto value, $Res Function(LocationChatDto) then) =
      _$LocationChatDtoCopyWithImpl<$Res>;
  $Res call(
      {String chatId,
      String creatorUserId,
      String lastMessage,
      String lastSenderId,
      String chatTitle,
      String timestamp,
      double longitude,
      double latitude,
      List<String> keywords});
}

/// @nodoc
class _$LocationChatDtoCopyWithImpl<$Res>
    implements $LocationChatDtoCopyWith<$Res> {
  _$LocationChatDtoCopyWithImpl(this._value, this._then);

  final LocationChatDto _value;
  // ignore: unused_field
  final $Res Function(LocationChatDto) _then;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? creatorUserId = freezed,
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? chatTitle = freezed,
    Object? timestamp = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUserId: creatorUserId == freezed
          ? _value.creatorUserId
          : creatorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatTitle: chatTitle == freezed
          ? _value.chatTitle
          : chatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$LocationChatDtoCopyWith<$Res>
    implements $LocationChatDtoCopyWith<$Res> {
  factory _$LocationChatDtoCopyWith(
          _LocationChatDto value, $Res Function(_LocationChatDto) then) =
      __$LocationChatDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chatId,
      String creatorUserId,
      String lastMessage,
      String lastSenderId,
      String chatTitle,
      String timestamp,
      double longitude,
      double latitude,
      List<String> keywords});
}

/// @nodoc
class __$LocationChatDtoCopyWithImpl<$Res>
    extends _$LocationChatDtoCopyWithImpl<$Res>
    implements _$LocationChatDtoCopyWith<$Res> {
  __$LocationChatDtoCopyWithImpl(
      _LocationChatDto _value, $Res Function(_LocationChatDto) _then)
      : super(_value, (v) => _then(v as _LocationChatDto));

  @override
  _LocationChatDto get _value => super._value as _LocationChatDto;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? creatorUserId = freezed,
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? chatTitle = freezed,
    Object? timestamp = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_LocationChatDto(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUserId: creatorUserId == freezed
          ? _value.creatorUserId
          : creatorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatTitle: chatTitle == freezed
          ? _value.chatTitle
          : chatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationChatDto extends _LocationChatDto {
  const _$_LocationChatDto(
      {required this.chatId,
      required this.creatorUserId,
      required this.lastMessage,
      required this.lastSenderId,
      required this.chatTitle,
      required this.timestamp,
      required this.longitude,
      required this.latitude,
      required this.keywords})
      : super._();

  factory _$_LocationChatDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationChatDtoFromJson(json);

  @override
  final String chatId;
  @override
  final String creatorUserId;
  @override
  final String lastMessage;
  @override
  final String lastSenderId;
  @override
  final String chatTitle;
  @override
  final String timestamp;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final List<String> keywords;

  @override
  String toString() {
    return 'LocationChatDto(chatId: $chatId, creatorUserId: $creatorUserId, lastMessage: $lastMessage, lastSenderId: $lastSenderId, chatTitle: $chatTitle, timestamp: $timestamp, longitude: $longitude, latitude: $latitude, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChatDto &&
            (identical(other.chatId, chatId) ||
                const DeepCollectionEquality().equals(other.chatId, chatId)) &&
            (identical(other.creatorUserId, creatorUserId) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUserId, creatorUserId)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.lastSenderId, lastSenderId) ||
                const DeepCollectionEquality()
                    .equals(other.lastSenderId, lastSenderId)) &&
            (identical(other.chatTitle, chatTitle) ||
                const DeepCollectionEquality()
                    .equals(other.chatTitle, chatTitle)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.keywords, keywords) ||
                const DeepCollectionEquality()
                    .equals(other.keywords, keywords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatId) ^
      const DeepCollectionEquality().hash(creatorUserId) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(lastSenderId) ^
      const DeepCollectionEquality().hash(chatTitle) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(keywords);

  @JsonKey(ignore: true)
  @override
  _$LocationChatDtoCopyWith<_LocationChatDto> get copyWith =>
      __$LocationChatDtoCopyWithImpl<_LocationChatDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationChatDtoToJson(this);
  }
}

abstract class _LocationChatDto extends LocationChatDto {
  const factory _LocationChatDto(
      {required String chatId,
      required String creatorUserId,
      required String lastMessage,
      required String lastSenderId,
      required String chatTitle,
      required String timestamp,
      required double longitude,
      required double latitude,
      required List<String> keywords}) = _$_LocationChatDto;
  const _LocationChatDto._() : super._();

  factory _LocationChatDto.fromJson(Map<String, dynamic> json) =
      _$_LocationChatDto.fromJson;

  @override
  String get chatId => throw _privateConstructorUsedError;
  @override
  String get creatorUserId => throw _privateConstructorUsedError;
  @override
  String get lastMessage => throw _privateConstructorUsedError;
  @override
  String get lastSenderId => throw _privateConstructorUsedError;
  @override
  String get chatTitle => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  List<String> get keywords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationChatDtoCopyWith<_LocationChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}
