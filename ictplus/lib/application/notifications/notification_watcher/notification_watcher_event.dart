part of 'notification_watcher_bloc.dart';

@freezed
class NotificationWatcherEvent with _$NotificationWatcherEvent {
  const factory NotificationWatcherEvent.retrieveNotificationsStarted() =
      _RetrieveNotificationsStarted;
  const factory NotificationWatcherEvent.retrieveProfilesStarted(
      List<Notification> notifs) = _RetrieveProfilesStarted;
  const factory NotificationWatcherEvent.notificationsReceived(
          Either<DataFailure, List<Notification>> failureOrNotifications) =
      _NotificationsReceived;
  const factory NotificationWatcherEvent.retrieveMoreNotifications(
          List<Notification> oldNotifs, List<Profile> oldProfiles) =
      _RetrieveMoreNotifications;
  const factory NotificationWatcherEvent.retrieveMoreProfiles(
      List<Notification> newNotifs,
      List<Notification> updatedNotifs,
      List<Profile> oldProfiles) = _RetrieveMoreProfiles;
  const factory NotificationWatcherEvent.moreNotificationsReceived(
      Either<DataFailure, List<Notification>> failureOrNotifications,
      List<Notification> oldNotifs,
      List<Profile> oldProfiles) = _MoreNotificationsReceived;
}
