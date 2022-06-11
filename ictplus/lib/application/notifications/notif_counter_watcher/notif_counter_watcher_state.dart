part of 'notif_counter_watcher_bloc.dart';

@freezed
class NotifCounterWatcherState with _$NotifCounterWatcherState {
  const factory NotifCounterWatcherState.initial() = _Initial;
  const factory NotifCounterWatcherState.loadInProgress() = _LoadInProgress;
  const factory NotifCounterWatcherState.loadSuccess(
      int unread, String userId) = LoadSuccess;
  const factory NotifCounterWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
