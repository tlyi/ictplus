part of 'search_location_chats_bloc.dart';

@freezed
class SearchLocationChatsEvent with _$SearchLocationChatsEvent {
  const factory SearchLocationChatsEvent.searchChanged(String query) =
      _SearchChanged;
}
