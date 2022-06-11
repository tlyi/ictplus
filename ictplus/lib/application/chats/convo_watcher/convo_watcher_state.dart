part of 'convo_watcher_bloc.dart';

@freezed
class ConvoWatcherState with _$ConvoWatcherState {
  const factory ConvoWatcherState.initial() = _Initial;
  const factory ConvoWatcherState.loadMessagesInProgress() =
      _LoadMessagesInProgress;
  const factory ConvoWatcherState.loadMessagesSuccess(
      List<ChatMessage> messages) = _LoadMessagesSuccess;
  const factory ConvoWatcherState.loadMessagesFailure(DataFailure dataFailure) =
      _LoadMessagesFailure;
}
