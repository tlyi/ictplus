part of 'location_convo_watcher_bloc.dart';

@freezed
class LocationConvoWatcherState with _$LocationConvoWatcherState {
  const factory LocationConvoWatcherState.initial() = _Initial;
  const factory LocationConvoWatcherState.loadMessagesInProgress() =
      _LoadMessagesInProgress;
  const factory LocationConvoWatcherState.loadMessagesSuccess(
          List<ChatMessage> messages, List<Profile> profiles) =
      _LoadMessagesSuccess;
  const factory LocationConvoWatcherState.loadMessagesFailure(
      DataFailure dataFailure) = _LoadMessagesFailure;
}
