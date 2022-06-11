part of 'notification_watcher_bloc.dart';

@freezed
class NotificationWatcherState with _$NotificationWatcherState {
  const factory NotificationWatcherState.initial() = _Initial;
  const factory NotificationWatcherState.loadInProgress() = LoadInProgress;
  const factory NotificationWatcherState.loadSuccess(
      List<Notification> notifications,
      List<Profile> profiles,
      bool hasMore,
      bool isRetrieving) = LoadSuccess;
  const factory NotificationWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
