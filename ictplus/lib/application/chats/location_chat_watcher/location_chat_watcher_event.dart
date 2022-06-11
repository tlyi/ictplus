part of 'location_chat_watcher_bloc.dart';

@freezed
class LocationChatWatcherEvent with _$LocationChatWatcherEvent {
  const factory LocationChatWatcherEvent.retrieveChatsStarted() =
      _RetrieveChatsStarted;
  const factory LocationChatWatcherEvent.refreshedLocation() =
      _RefreshedLocation;
  const factory LocationChatWatcherEvent.retrieveChatsFromNewLocationStarted(
      Position position) = _RetrieveChatsFromNewLocationStarted;
  const factory LocationChatWatcherEvent.chatsReceived(
      Either<DataFailure, List<LocationChat>> failureOrChats,
      List<double> distances) = _ChatsReceived;
}
