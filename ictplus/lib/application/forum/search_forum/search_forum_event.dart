part of 'search_forum_bloc.dart';

@freezed
class SearchForumEvent with _$SearchForumEvent {
  const factory SearchForumEvent.searchChanged(String query) = _SearchChanged;
}
