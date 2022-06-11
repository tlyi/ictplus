// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchProfileEventTearOff {
  const _$SearchProfileEventTearOff();

  _SearchChanged searchChanged(String query) {
    return _SearchChanged(
      query,
    );
  }
}

/// @nodoc
const $SearchProfileEvent = _$SearchProfileEventTearOff();

/// @nodoc
mixin _$SearchProfileEvent {
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProfileEventCopyWith<SearchProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProfileEventCopyWith<$Res> {
  factory $SearchProfileEventCopyWith(
          SearchProfileEvent value, $Res Function(SearchProfileEvent) then) =
      _$SearchProfileEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchProfileEventCopyWithImpl<$Res>
    implements $SearchProfileEventCopyWith<$Res> {
  _$SearchProfileEventCopyWithImpl(this._value, this._then);

  final SearchProfileEvent _value;
  // ignore: unused_field
  final $Res Function(SearchProfileEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchChangedCopyWith<$Res>
    implements $SearchProfileEventCopyWith<$Res> {
  factory _$SearchChangedCopyWith(
          _SearchChanged value, $Res Function(_SearchChanged) then) =
      __$SearchChangedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$SearchChangedCopyWithImpl<$Res>
    extends _$SearchProfileEventCopyWithImpl<$Res>
    implements _$SearchChangedCopyWith<$Res> {
  __$SearchChangedCopyWithImpl(
      _SearchChanged _value, $Res Function(_SearchChanged) _then)
      : super(_value, (v) => _then(v as _SearchChanged));

  @override
  _SearchChanged get _value => super._value as _SearchChanged;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchChanged(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProfileEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchChanged &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      __$SearchChangedCopyWithImpl<_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements SearchProfileEvent {
  const factory _SearchChanged(String query) = _$_SearchChanged;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchProfileStateTearOff {
  const _$SearchProfileStateTearOff();

  _SearchProfileState call(
      {required Either<DataFailure, List<Profile>> searchProfileResults,
      required bool isSearching,
      required bool displayResults}) {
    return _SearchProfileState(
      searchProfileResults: searchProfileResults,
      isSearching: isSearching,
      displayResults: displayResults,
    );
  }
}

/// @nodoc
const $SearchProfileState = _$SearchProfileStateTearOff();

/// @nodoc
mixin _$SearchProfileState {
  Either<DataFailure, List<Profile>> get searchProfileResults =>
      throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get displayResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProfileStateCopyWith<SearchProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProfileStateCopyWith<$Res> {
  factory $SearchProfileStateCopyWith(
          SearchProfileState value, $Res Function(SearchProfileState) then) =
      _$SearchProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<Profile>> searchProfileResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class _$SearchProfileStateCopyWithImpl<$Res>
    implements $SearchProfileStateCopyWith<$Res> {
  _$SearchProfileStateCopyWithImpl(this._value, this._then);

  final SearchProfileState _value;
  // ignore: unused_field
  final $Res Function(SearchProfileState) _then;

  @override
  $Res call({
    Object? searchProfileResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchProfileResults: searchProfileResults == freezed
          ? _value.searchProfileResults
          : searchProfileResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      displayResults: displayResults == freezed
          ? _value.displayResults
          : displayResults // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchProfileStateCopyWith<$Res>
    implements $SearchProfileStateCopyWith<$Res> {
  factory _$SearchProfileStateCopyWith(
          _SearchProfileState value, $Res Function(_SearchProfileState) then) =
      __$SearchProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, List<Profile>> searchProfileResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class __$SearchProfileStateCopyWithImpl<$Res>
    extends _$SearchProfileStateCopyWithImpl<$Res>
    implements _$SearchProfileStateCopyWith<$Res> {
  __$SearchProfileStateCopyWithImpl(
      _SearchProfileState _value, $Res Function(_SearchProfileState) _then)
      : super(_value, (v) => _then(v as _SearchProfileState));

  @override
  _SearchProfileState get _value => super._value as _SearchProfileState;

  @override
  $Res call({
    Object? searchProfileResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_SearchProfileState(
      searchProfileResults: searchProfileResults == freezed
          ? _value.searchProfileResults
          : searchProfileResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      displayResults: displayResults == freezed
          ? _value.displayResults
          : displayResults // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchProfileState implements _SearchProfileState {
  const _$_SearchProfileState(
      {required this.searchProfileResults,
      required this.isSearching,
      required this.displayResults});

  @override
  final Either<DataFailure, List<Profile>> searchProfileResults;
  @override
  final bool isSearching;
  @override
  final bool displayResults;

  @override
  String toString() {
    return 'SearchProfileState(searchProfileResults: $searchProfileResults, isSearching: $isSearching, displayResults: $displayResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchProfileState &&
            (identical(other.searchProfileResults, searchProfileResults) ||
                const DeepCollectionEquality().equals(
                    other.searchProfileResults, searchProfileResults)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.displayResults, displayResults) ||
                const DeepCollectionEquality()
                    .equals(other.displayResults, displayResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchProfileResults) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(displayResults);

  @JsonKey(ignore: true)
  @override
  _$SearchProfileStateCopyWith<_SearchProfileState> get copyWith =>
      __$SearchProfileStateCopyWithImpl<_SearchProfileState>(this, _$identity);
}

abstract class _SearchProfileState implements SearchProfileState {
  const factory _SearchProfileState(
      {required Either<DataFailure, List<Profile>> searchProfileResults,
      required bool isSearching,
      required bool displayResults}) = _$_SearchProfileState;

  @override
  Either<DataFailure, List<Profile>> get searchProfileResults =>
      throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  bool get displayResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchProfileStateCopyWith<_SearchProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
