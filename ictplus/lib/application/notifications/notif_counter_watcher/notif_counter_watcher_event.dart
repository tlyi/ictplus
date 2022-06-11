part of 'notif_counter_watcher_bloc.dart';

@freezed
class NotifCounterWatcherEvent with _$NotifCounterWatcherEvent {
  const factory NotifCounterWatcherEvent.retrieveUnreadNotifsStarted(
      {required String userId}) = _RetrieveUnreadNotifsStarted;

  const factory NotifCounterWatcherEvent.unreadNotifsReceived(
          Either<DataFailure, int> failureOrUnreadNotifCount, String userId) =
      _UnreadNotifsReceived;
}
