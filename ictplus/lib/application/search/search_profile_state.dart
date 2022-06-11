part of 'search_profile_bloc.dart';

@freezed
class SearchProfileState with _$SearchProfileState {
  const factory SearchProfileState({
    required Either<DataFailure, List<Profile>> searchProfileResults,
    required bool isSearching,
    required bool displayResults,
  }) = _SearchProfileState;
  factory SearchProfileState.initial() => SearchProfileState(
        searchProfileResults: right([]),
        isSearching: false,
        displayResults: false,
      );
}
