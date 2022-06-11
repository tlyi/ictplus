part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherState with _$ChatWatcherState {
  const factory ChatWatcherState.initial() = _Initial;
  const factory ChatWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChatWatcherState.loadSuccess(
      List<Chat> chats, List<Profile> profiles) = _LoadSuccess;
  const factory ChatWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
