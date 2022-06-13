// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PollTearOff {
  const _$PollTearOff();

  _Poll call(
      {required int numOptions,
      required String creatorUuid,
      required Title title,
      required List<PollOption> optionList,
      required List<double> voteList,
      required Map<String, int> usersWhoVoted}) {
    return _Poll(
      numOptions: numOptions,
      creatorUuid: creatorUuid,
      title: title,
      optionList: optionList,
      voteList: voteList,
      usersWhoVoted: usersWhoVoted,
    );
  }
}

/// @nodoc
const $Poll = _$PollTearOff();

/// @nodoc
mixin _$Poll {
  int get numOptions => throw _privateConstructorUsedError;
  String get creatorUuid => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  List<PollOption> get optionList => throw _privateConstructorUsedError;
  List<double> get voteList => throw _privateConstructorUsedError;
  Map<String, int> get usersWhoVoted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res>;
  $Res call(
      {int numOptions,
      String creatorUuid,
      Title title,
      List<PollOption> optionList,
      List<double> voteList,
      Map<String, int> usersWhoVoted});
}

/// @nodoc
class _$PollCopyWithImpl<$Res> implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  final Poll _value;
  // ignore: unused_field
  final $Res Function(Poll) _then;

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
              as Title,
      optionList: optionList == freezed
          ? _value.optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
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
abstract class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) then) =
      __$PollCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numOptions,
      String creatorUuid,
      Title title,
      List<PollOption> optionList,
      List<double> voteList,
      Map<String, int> usersWhoVoted});
}

/// @nodoc
class __$PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res>
    implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(_Poll _value, $Res Function(_Poll) _then)
      : super(_value, (v) => _then(v as _Poll));

  @override
  _Poll get _value => super._value as _Poll;

  @override
  $Res call({
    Object? numOptions = freezed,
    Object? creatorUuid = freezed,
    Object? title = freezed,
    Object? optionList = freezed,
    Object? voteList = freezed,
    Object? usersWhoVoted = freezed,
  }) {
    return _then(_Poll(
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
              as Title,
      optionList: optionList == freezed
          ? _value.optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
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

class _$_Poll extends _Poll {
  const _$_Poll(
      {required this.numOptions,
      required this.creatorUuid,
      required this.title,
      required this.optionList,
      required this.voteList,
      required this.usersWhoVoted})
      : super._();

  @override
  final int numOptions;
  @override
  final String creatorUuid;
  @override
  final Title title;
  @override
  final List<PollOption> optionList;
  @override
  final List<double> voteList;
  @override
  final Map<String, int> usersWhoVoted;

  @override
  String toString() {
    return 'Poll(numOptions: $numOptions, creatorUuid: $creatorUuid, title: $title, optionList: $optionList, voteList: $voteList, usersWhoVoted: $usersWhoVoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Poll &&
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
  _$PollCopyWith<_Poll> get copyWith =>
      __$PollCopyWithImpl<_Poll>(this, _$identity);
}

abstract class _Poll extends Poll {
  const factory _Poll(
      {required int numOptions,
      required String creatorUuid,
      required Title title,
      required List<PollOption> optionList,
      required List<double> voteList,
      required Map<String, int> usersWhoVoted}) = _$_Poll;
  const _Poll._() : super._();

  @override
  int get numOptions => throw _privateConstructorUsedError;
  @override
  String get creatorUuid => throw _privateConstructorUsedError;
  @override
  Title get title => throw _privateConstructorUsedError;
  @override
  List<PollOption> get optionList => throw _privateConstructorUsedError;
  @override
  List<double> get voteList => throw _privateConstructorUsedError;
  @override
  Map<String, int> get usersWhoVoted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollCopyWith<_Poll> get copyWith => throw _privateConstructorUsedError;
}
