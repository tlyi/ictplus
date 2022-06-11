// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_location_chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchLocationChatsEventTearOff {
  const _$SearchLocationChatsEventTearOff();

  _SearchChanged searchChanged(String query) {
    return _SearchChanged(
      query,
    );
  }
}

/// @nodoc
const $SearchLocationChatsEvent = _$SearchLocationChatsEventTearOff();

/// @nodoc
mixin _$SearchLocationChatsEvent {
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
  $SearchLocationChatsEventCopyWith<SearchLocationChatsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationChatsEventCopyWith<$Res> {
  factory $SearchLocationChatsEventCopyWith(SearchLocationChatsEvent value,
          $Res Function(SearchLocationChatsEvent) then) =
      _$SearchLocationChatsEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchLocationChatsEventCopyWithImpl<$Res>
    implements $SearchLocationChatsEventCopyWith<$Res> {
  _$SearchLocationChatsEventCopyWithImpl(this._value, this._then);

  final SearchLocationChatsEvent _value;
  // ignore: unused_field
  final $Res Function(SearchLocationChatsEvent) _then;

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
    implements $SearchLocationChatsEventCopyWith<$Res> {
  factory _$SearchChangedCopyWith(
          _SearchChanged value, $Res Function(_SearchChanged) then) =
      __$SearchChangedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$SearchChangedCopyWithImpl<$Res>
    extends _$SearchLocationChatsEventCopyWithImpl<$Res>
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
    return 'SearchLocationChatsEvent.searchChanged(query: $query)';
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

abstract class _SearchChanged implements SearchLocationChatsEvent {
  const factory _SearchChanged(String query) = _$_SearchChanged;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchLocationChatsStateTearOff {
  const _$SearchLocationChatsStateTearOff();

  _SearchLocationChatsState call(
      {required Either<DataFailure, List<LocationChat>> searchResults,
      required bool isSearching,
      required bool displayResults}) {
    return _SearchLocationChatsState(
      searchResults: searchResults,
      isSearching: isSearching,
      displayResults: displayResults,
    );
  }
}

/// @nodoc
const $SearchLocationChatsState = _$SearchLocationChatsStateTearOff();

/// @nodoc
mixin _$SearchLocationChatsState {
  Either<DataFailure, List<LocationChat>> get searchResults =>
      throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get displayResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchLocationChatsStateCopyWith<SearchLocationChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationChatsStateCopyWith<$Res> {
  factory $SearchLocationChatsStateCopyWith(SearchLocationChatsState value,
          $Res Function(SearchLocationChatsState) then) =
      _$SearchLocationChatsStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<LocationChat>> searchResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class _$SearchLocationChatsStateCopyWithImpl<$Res>
    implements $SearchLocationChatsStateCopyWith<$Res> {
  _$SearchLocationChatsStateCopyWithImpl(this._value, this._then);

  final SearchLocationChatsState _value;
  // ignore: unused_field
  final $Res Function(SearchLocationChatsState) _then;

  @override
  $Res call({
    Object? searchResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<LocationChat>>,
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
abstract class _$SearchLocationChatsStateCopyWith<$Res>
    implements $SearchLocationChatsStateCopyWith<$Res> {
  factory _$SearchLocationChatsStateCopyWith(_SearchLocationChatsState value,
          $Res Function(_SearchLocationChatsState) then) =
      __$SearchLocationChatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, List<LocationChat>> searchResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class __$SearchLocationChatsStateCopyWithImpl<$Res>
    extends _$SearchLocationChatsStateCopyWithImpl<$Res>
    implements _$SearchLocationChatsStateCopyWith<$Res> {
  __$SearchLocationChatsStateCopyWithImpl(_SearchLocationChatsState _value,
      $Res Function(_SearchLocationChatsState) _then)
      : super(_value, (v) => _then(v as _SearchLocationChatsState));

  @override
  _SearchLocationChatsState get _value =>
      super._value as _SearchLocationChatsState;

  @override
  $Res call({
    Object? searchResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_SearchLocationChatsState(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<LocationChat>>,
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

class _$_SearchLocationChatsState implements _SearchLocationChatsState {
  const _$_SearchLocationChatsState(
      {required this.searchResults,
      required this.isSearching,
      required this.displayResults});

  @override
  final Either<DataFailure, List<LocationChat>> searchResults;
  @override
  final bool isSearching;
  @override
  final bool displayResults;

  @override
  String toString() {
    return 'SearchLocationChatsState(searchResults: $searchResults, isSearching: $isSearching, displayResults: $displayResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchLocationChatsState &&
            (identical(other.searchResults, searchResults) ||
                const DeepCollectionEquality()
                    .equals(other.searchResults, searchResults)) &&
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
      const DeepCollectionEquality().hash(searchResults) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(displayResults);

  @JsonKey(ignore: true)
  @override
  _$SearchLocationChatsStateCopyWith<_SearchLocationChatsState> get copyWith =>
      __$SearchLocationChatsStateCopyWithImpl<_SearchLocationChatsState>(
          this, _$identity);
}

abstract class _SearchLocationChatsState implements SearchLocationChatsState {
  const factory _SearchLocationChatsState(
      {required Either<DataFailure, List<LocationChat>> searchResults,
      required bool isSearching,
      required bool displayResults}) = _$_SearchLocationChatsState;

  @override
  Either<DataFailure, List<LocationChat>> get searchResults =>
      throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  bool get displayResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchLocationChatsStateCopyWith<_SearchLocationChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
