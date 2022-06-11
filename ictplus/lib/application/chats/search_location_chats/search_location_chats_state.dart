part of 'search_location_chats_bloc.dart';

@freezed
class SearchLocationChatsState with _$SearchLocationChatsState {
  const factory SearchLocationChatsState({
    required Either<DataFailure, List<LocationChat>> searchResults,
    required bool isSearching,
    required bool displayResults,
  }) = _SearchLocationChatsState;
  factory SearchLocationChatsState.initial() => SearchLocationChatsState(
        searchResults: right([]),
        isSearching: false,
        displayResults: false,
      );
}
