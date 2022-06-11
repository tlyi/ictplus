part of 'location_chat_watcher_bloc.dart';

@freezed
class LocationChatWatcherState with _$LocationChatWatcherState {
  const factory LocationChatWatcherState.initial() = _Initial;
  const factory LocationChatWatcherState.loadInProgress() = _LoadInProgress;
  const factory LocationChatWatcherState.loadSuccess(
      List<LocationChat> chats, List<double> distances) = _LoadSuccess;
  const factory LocationChatWatcherState.loadDataFailure(
      DataFailure dataFailure) = _LoadDataFailure;
  const factory LocationChatWatcherState.loadLocationFailure(
      LocationFailure locationFailure) = _LoadLocationFailure;
}
