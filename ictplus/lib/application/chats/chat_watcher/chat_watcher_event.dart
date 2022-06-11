part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherEvent with _$ChatWatcherEvent {
  const factory ChatWatcherEvent.retrieveChatsStarted() = _RetrieveChatsStarted;
  const factory ChatWatcherEvent.chatsReceived(
      Either<DataFailure, List<Chat>> failureOrChats) = _ChatsReceived;
  const factory ChatWatcherEvent.retrieveProfilesStarted(List<Chat> chats) =
      _RetrieveProfilesStarted;
}
