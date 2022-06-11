part of 'chat_counter_watcher_bloc.dart';

@freezed
class ChatCounterWatcherEvent with _$ChatCounterWatcherEvent {
  const factory ChatCounterWatcherEvent.retrieveUnreadChatsStarted(
      {required String userId}) = _RetrieveUnreadChatsStarted;
  const factory ChatCounterWatcherEvent.unreadChatsReceived(
      Either<DataFailure, int> failureOrUnreadChatCount) = _UnreadChatsReceived;
}
