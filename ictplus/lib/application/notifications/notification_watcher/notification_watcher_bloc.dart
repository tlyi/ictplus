import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/notifications/i_notification_repository.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'notification_watcher_event.dart';
part 'notification_watcher_state.dart';
part 'notification_watcher_bloc.freezed.dart';

@injectable
class NotificationWatcherBloc
    extends Bloc<NotificationWatcherEvent, NotificationWatcherState> {
  final INotificationRepository _notificationRepository;
  NotificationWatcherBloc(this._notificationRepository)
      : super(const NotificationWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Notification>>>?
      _notificationStreamSubscription;

  @override
  Stream<NotificationWatcherState> mapEventToState(
    NotificationWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveNotificationsStarted: (e) async* {
        yield const NotificationWatcherState.loadInProgress();
        final String userId = await _notificationRepository.getOwnId();
        await _notificationStreamSubscription?.cancel();
        _notificationStreamSubscription = _notificationRepository
            .retrieveNotificationsInitial(userId)
            .listen((failureOrNotifications) => add(
                NotificationWatcherEvent.notificationsReceived(
                    failureOrNotifications)));
      },
      notificationsReceived: (e) async* {
        DataFailure? failure;
        List<Notification>? notifications;

        e.failureOrNotifications
            .fold((f) => failure = f, (n) => notifications = n);
        if (failure != null) {
          yield NotificationWatcherState.loadFailure(failure!);
        } else {
          add(NotificationWatcherEvent.retrieveProfilesStarted(notifications!));
        }
      },
      retrieveProfilesStarted: (e) async* {
        final List<Profile> profileList = [];

        for (final notif in e.notifs) {
          final Either<DataFailure, Profile> failureOrProfile =
              await _notificationRepository.searchProfileByUuid(notif.senderId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield NotificationWatcherState.loadFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield NotificationWatcherState.loadSuccess(
            e.notifs, profileList, e.notifs.length == 10, false);
      },
      retrieveMoreNotifications: (e) async* {
        yield NotificationWatcherState.loadSuccess(
            e.oldNotifs, e.oldProfiles, true, true);
        final String userId = await _notificationRepository.getOwnId();
        final String lastTimestamp = e.oldNotifs.last.timestamp;
        await _notificationStreamSubscription?.cancel();
        _notificationStreamSubscription = _notificationRepository
            .retrieveNotificationsInBatches(userId, lastTimestamp)
            .listen((failureOrNotifications) => add(
                NotificationWatcherEvent.moreNotificationsReceived(
                    failureOrNotifications, e.oldNotifs, e.oldProfiles)));
      },
      moreNotificationsReceived: (e) async* {
        DataFailure? failure;
        List<Notification>? newNotifs;

        e.failureOrNotifications.fold((f) => failure = f, (n) => newNotifs = n);
        if (failure != null) {
          yield NotificationWatcherState.loadFailure(failure!);
        } else {
          List<Notification> notifs = [];
          notifs.addAll(e.oldNotifs);
          notifs.addAll(newNotifs!);
          add(NotificationWatcherEvent.retrieveMoreProfiles(
              newNotifs!, notifs, e.oldProfiles));
        }
      },
      retrieveMoreProfiles: (e) async* {
        List<Profile> profiles = e.oldProfiles;

        for (final notif in e.newNotifs) {
          final Either<DataFailure, Profile> failureOrProfile =
              await _notificationRepository.searchProfileByUuid(notif.senderId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield NotificationWatcherState.loadFailure(failure!);
          } else {
            profiles.add(profile!);
          }
        }

        yield NotificationWatcherState.loadSuccess(
            e.updatedNotifs, profiles, e.newNotifs.length == 10, false);
      },
    );
  }

  @override
  Future<void> close() async {
    await _notificationStreamSubscription?.cancel();
    return super.close();
  }
}
