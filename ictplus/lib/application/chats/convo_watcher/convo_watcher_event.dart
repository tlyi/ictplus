part of 'convo_watcher_bloc.dart';

@freezed
class ConvoWatcherEvent with _$ConvoWatcherEvent {
  const factory ConvoWatcherEvent.retrieveConvoStarted(String otherId) =
      _RetrieveConvoStarted;
  const factory ConvoWatcherEvent.retrieveConvoEnded() = _RetrieveConvoEnded;
  const factory ConvoWatcherEvent.convoReceived(
          Either<DataFailure, List<ChatMessage>> failureOrMessages) =
      _ConvoReceived;
}
