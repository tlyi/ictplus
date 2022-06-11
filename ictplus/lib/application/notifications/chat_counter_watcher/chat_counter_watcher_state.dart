part of 'chat_counter_watcher_bloc.dart';

@freezed
class ChatCounterWatcherState with _$ChatCounterWatcherState {
  const factory ChatCounterWatcherState.initial() = _Initial;
  const factory ChatCounterWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChatCounterWatcherState.loadSuccess(int unreadChatCounter) =
      LoadSuccess;
  const factory ChatCounterWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
