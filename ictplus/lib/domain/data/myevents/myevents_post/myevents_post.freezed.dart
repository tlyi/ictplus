// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'myevents_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventPostTearOff {
  const _$EventPostTearOff();

  _EventPost call(
      {required String eventId,
      required Title title,
      required EventLocation location,
      required EventDate date,
      required List<String> forcePrepItems}) {
    return _EventPost(
      eventId: eventId,
      title: title,
      location: location,
      date: date,
      forcePrepItems: forcePrepItems,
    );
  }
}

/// @nodoc
const $EventPost = _$EventPostTearOff();

/// @nodoc
mixin _$EventPost {
  String get eventId => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  EventLocation get location => throw _privateConstructorUsedError;
  EventDate get date =>
      throw _privateConstructorUsedError; //required TODO: picture?
  List<String> get forcePrepItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventPostCopyWith<EventPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPostCopyWith<$Res> {
  factory $EventPostCopyWith(EventPost value, $Res Function(EventPost) then) =
      _$EventPostCopyWithImpl<$Res>;
  $Res call(
      {String eventId,
      Title title,
      EventLocation location,
      EventDate date,
      List<String> forcePrepItems});
}

/// @nodoc
class _$EventPostCopyWithImpl<$Res> implements $EventPostCopyWith<$Res> {
  _$EventPostCopyWithImpl(this._value, this._then);

  final EventPost _value;
  // ignore: unused_field
  final $Res Function(EventPost) _then;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? forcePrepItems = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EventLocation,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as EventDate,
      forcePrepItems: forcePrepItems == freezed
          ? _value.forcePrepItems
          : forcePrepItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$EventPostCopyWith<$Res> implements $EventPostCopyWith<$Res> {
  factory _$EventPostCopyWith(
          _EventPost value, $Res Function(_EventPost) then) =
      __$EventPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String eventId,
      Title title,
      EventLocation location,
      EventDate date,
      List<String> forcePrepItems});
}

/// @nodoc
class __$EventPostCopyWithImpl<$Res> extends _$EventPostCopyWithImpl<$Res>
    implements _$EventPostCopyWith<$Res> {
  __$EventPostCopyWithImpl(_EventPost _value, $Res Function(_EventPost) _then)
      : super(_value, (v) => _then(v as _EventPost));

  @override
  _EventPost get _value => super._value as _EventPost;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? forcePrepItems = freezed,
  }) {
    return _then(_EventPost(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EventLocation,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as EventDate,
      forcePrepItems: forcePrepItems == freezed
          ? _value.forcePrepItems
          : forcePrepItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_EventPost extends _EventPost {
  const _$_EventPost(
      {required this.eventId,
      required this.title,
      required this.location,
      required this.date,
      required this.forcePrepItems})
      : super._();

  @override
  final String eventId;
  @override
  final Title title;
  @override
  final EventLocation location;
  @override
  final EventDate date;
  @override //required TODO: picture?
  final List<String> forcePrepItems;

  @override
  String toString() {
    return 'EventPost(eventId: $eventId, title: $title, location: $location, date: $date, forcePrepItems: $forcePrepItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventPost &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.forcePrepItems, forcePrepItems) ||
                const DeepCollectionEquality()
                    .equals(other.forcePrepItems, forcePrepItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(forcePrepItems);

  @JsonKey(ignore: true)
  @override
  _$EventPostCopyWith<_EventPost> get copyWith =>
      __$EventPostCopyWithImpl<_EventPost>(this, _$identity);
}

abstract class _EventPost extends EventPost {
  const factory _EventPost(
      {required String eventId,
      required Title title,
      required EventLocation location,
      required EventDate date,
      required List<String> forcePrepItems}) = _$_EventPost;
  const _EventPost._() : super._();

  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  Title get title => throw _privateConstructorUsedError;
  @override
  EventLocation get location => throw _privateConstructorUsedError;
  @override
  EventDate get date => throw _privateConstructorUsedError;
  @override //required TODO: picture?
  List<String> get forcePrepItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventPostCopyWith<_EventPost> get copyWith =>
      throw _privateConstructorUsedError;
}
