part of 'search_forum_bloc.dart';

@freezed
class SearchForumState with _$SearchForumState {
  const factory SearchForumState({
    required Either<DataFailure, List<ForumPost>> searchForumResults,
    required bool isSearching,
    required bool displayResults,
  }) = _SearchForumState;
  factory SearchForumState.initial() => SearchForumState(
        searchForumResults: right([]),
        isSearching: false,
        displayResults: false,
      );
}
