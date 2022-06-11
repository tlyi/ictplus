part of 'location_convo_watcher_bloc.dart';

@freezed
class LocationConvoWatcherEvent with _$LocationConvoWatcherEvent {
  const factory LocationConvoWatcherEvent.retrieveConvoStarted(String convoId) =
      _RetrieveConvoStarted;
  const factory LocationConvoWatcherEvent.retrieveConvoEnded() =
      _RetrieveConvoEnded;
  const factory LocationConvoWatcherEvent.convoReceived(
          Either<DataFailure, List<ChatMessage>> failureOrMessages) =
      _ConvoReceived;
  const factory LocationConvoWatcherEvent.retrieveProfilesStarted(
      List<ChatMessage> messages) = _RetrieveProfilesStarted;
}
