// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'following_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FollowingFeedTearOff {
  const _$FollowingFeedTearOff();

  _FollowingFeed call(
      {required String forumId,
      required String posterUserId,
      required String timestamp}) {
    return _FollowingFeed(
      forumId: forumId,
      posterUserId: posterUserId,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
const $FollowingFeed = _$FollowingFeedTearOff();

/// @nodoc
mixin _$FollowingFeed {
  String get forumId => throw _privateConstructorUsedError;
  String get posterUserId => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowingFeedCopyWith<FollowingFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingFeedCopyWith<$Res> {
  factory $FollowingFeedCopyWith(
          FollowingFeed value, $Res Function(FollowingFeed) then) =
      _$FollowingFeedCopyWithImpl<$Res>;
  $Res call({String forumId, String posterUserId, String timestamp});
}

/// @nodoc
class _$FollowingFeedCopyWithImpl<$Res>
    implements $FollowingFeedCopyWith<$Res> {
  _$FollowingFeedCopyWithImpl(this._value, this._then);

  final FollowingFeed _value;
  // ignore: unused_field
  final $Res Function(FollowingFeed) _then;

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
abstract class _$FollowingFeedCopyWith<$Res>
    implements $FollowingFeedCopyWith<$Res> {
  factory _$FollowingFeedCopyWith(
          _FollowingFeed value, $Res Function(_FollowingFeed) then) =
      __$FollowingFeedCopyWithImpl<$Res>;
  @override
  $Res call({String forumId, String posterUserId, String timestamp});
}

/// @nodoc
class __$FollowingFeedCopyWithImpl<$Res>
    extends _$FollowingFeedCopyWithImpl<$Res>
    implements _$FollowingFeedCopyWith<$Res> {
  __$FollowingFeedCopyWithImpl(
      _FollowingFeed _value, $Res Function(_FollowingFeed) _then)
      : super(_value, (v) => _then(v as _FollowingFeed));

  @override
  _FollowingFeed get _value => super._value as _FollowingFeed;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? posterUserId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_FollowingFeed(
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

class _$_FollowingFeed extends _FollowingFeed {
  const _$_FollowingFeed(
      {required this.forumId,
      required this.posterUserId,
      required this.timestamp})
      : super._();

  @override
  final String forumId;
  @override
  final String posterUserId;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'FollowingFeed(forumId: $forumId, posterUserId: $posterUserId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowingFeed &&
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
  _$FollowingFeedCopyWith<_FollowingFeed> get copyWith =>
      __$FollowingFeedCopyWithImpl<_FollowingFeed>(this, _$identity);
}

abstract class _FollowingFeed extends FollowingFeed {
  const factory _FollowingFeed(
      {required String forumId,
      required String posterUserId,
      required String timestamp}) = _$_FollowingFeed;
  const _FollowingFeed._() : super._();

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  String get posterUserId => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowingFeedCopyWith<_FollowingFeed> get copyWith =>
      throw _privateConstructorUsedError;
}
