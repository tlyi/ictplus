// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_forum_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchForumEventTearOff {
  const _$SearchForumEventTearOff();

  _SearchChanged searchChanged(String query) {
    return _SearchChanged(
      query,
    );
  }
}

/// @nodoc
const $SearchForumEvent = _$SearchForumEventTearOff();

/// @nodoc
mixin _$SearchForumEvent {
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
  $SearchForumEventCopyWith<SearchForumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchForumEventCopyWith<$Res> {
  factory $SearchForumEventCopyWith(
          SearchForumEvent value, $Res Function(SearchForumEvent) then) =
      _$SearchForumEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchForumEventCopyWithImpl<$Res>
    implements $SearchForumEventCopyWith<$Res> {
  _$SearchForumEventCopyWithImpl(this._value, this._then);

  final SearchForumEvent _value;
  // ignore: unused_field
  final $Res Function(SearchForumEvent) _then;

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
    implements $SearchForumEventCopyWith<$Res> {
  factory _$SearchChangedCopyWith(
          _SearchChanged value, $Res Function(_SearchChanged) then) =
      __$SearchChangedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$SearchChangedCopyWithImpl<$Res>
    extends _$SearchForumEventCopyWithImpl<$Res>
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

class _$_SearchChanged with DiagnosticableTreeMixin implements _SearchChanged {
  const _$_SearchChanged(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchForumEvent.searchChanged(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchForumEvent.searchChanged'))
      ..add(DiagnosticsProperty('query', query));
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

abstract class _SearchChanged implements SearchForumEvent {
  const factory _SearchChanged(String query) = _$_SearchChanged;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchForumStateTearOff {
  const _$SearchForumStateTearOff();

  _SearchForumState call(
      {required Either<DataFailure, List<ForumPost>> searchForumResults,
      required bool isSearching,
      required bool displayResults}) {
    return _SearchForumState(
      searchForumResults: searchForumResults,
      isSearching: isSearching,
      displayResults: displayResults,
    );
  }
}

/// @nodoc
const $SearchForumState = _$SearchForumStateTearOff();

/// @nodoc
mixin _$SearchForumState {
  Either<DataFailure, List<ForumPost>> get searchForumResults =>
      throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get displayResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchForumStateCopyWith<SearchForumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchForumStateCopyWith<$Res> {
  factory $SearchForumStateCopyWith(
          SearchForumState value, $Res Function(SearchForumState) then) =
      _$SearchForumStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<ForumPost>> searchForumResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class _$SearchForumStateCopyWithImpl<$Res>
    implements $SearchForumStateCopyWith<$Res> {
  _$SearchForumStateCopyWithImpl(this._value, this._then);

  final SearchForumState _value;
  // ignore: unused_field
  final $Res Function(SearchForumState) _then;

  @override
  $Res call({
    Object? searchForumResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchForumResults: searchForumResults == freezed
          ? _value.searchForumResults
          : searchForumResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ForumPost>>,
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
abstract class _$SearchForumStateCopyWith<$Res>
    implements $SearchForumStateCopyWith<$Res> {
  factory _$SearchForumStateCopyWith(
          _SearchForumState value, $Res Function(_SearchForumState) then) =
      __$SearchForumStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, List<ForumPost>> searchForumResults,
      bool isSearching,
      bool displayResults});
}

/// @nodoc
class __$SearchForumStateCopyWithImpl<$Res>
    extends _$SearchForumStateCopyWithImpl<$Res>
    implements _$SearchForumStateCopyWith<$Res> {
  __$SearchForumStateCopyWithImpl(
      _SearchForumState _value, $Res Function(_SearchForumState) _then)
      : super(_value, (v) => _then(v as _SearchForumState));

  @override
  _SearchForumState get _value => super._value as _SearchForumState;

  @override
  $Res call({
    Object? searchForumResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
  }) {
    return _then(_SearchForumState(
      searchForumResults: searchForumResults == freezed
          ? _value.searchForumResults
          : searchForumResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ForumPost>>,
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

class _$_SearchForumState
    with DiagnosticableTreeMixin
    implements _SearchForumState {
  const _$_SearchForumState(
      {required this.searchForumResults,
      required this.isSearching,
      required this.displayResults});

  @override
  final Either<DataFailure, List<ForumPost>> searchForumResults;
  @override
  final bool isSearching;
  @override
  final bool displayResults;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchForumState(searchForumResults: $searchForumResults, isSearching: $isSearching, displayResults: $displayResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchForumState'))
      ..add(DiagnosticsProperty('searchForumResults', searchForumResults))
      ..add(DiagnosticsProperty('isSearching', isSearching))
      ..add(DiagnosticsProperty('displayResults', displayResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchForumState &&
            (identical(other.searchForumResults, searchForumResults) ||
                const DeepCollectionEquality()
                    .equals(other.searchForumResults, searchForumResults)) &&
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
      const DeepCollectionEquality().hash(searchForumResults) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(displayResults);

  @JsonKey(ignore: true)
  @override
  _$SearchForumStateCopyWith<_SearchForumState> get copyWith =>
      __$SearchForumStateCopyWithImpl<_SearchForumState>(this, _$identity);
}

abstract class _SearchForumState implements SearchForumState {
  const factory _SearchForumState(
      {required Either<DataFailure, List<ForumPost>> searchForumResults,
      required bool isSearching,
      required bool displayResults}) = _$_SearchForumState;

  @override
  Either<DataFailure, List<ForumPost>> get searchForumResults =>
      throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  bool get displayResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchForumStateCopyWith<_SearchForumState> get copyWith =>
      throw _privateConstructorUsedError;
}
