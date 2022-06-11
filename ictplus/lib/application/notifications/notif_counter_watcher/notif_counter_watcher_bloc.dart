import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/notifications/i_notification_repository.dart';

import 'package:injectable/injectable.dart';

part 'notif_counter_watcher_event.dart';
part 'notif_counter_watcher_state.dart';
part 'notif_counter_watcher_bloc.freezed.dart';

@injectable
class NotifCounterWatcherBloc
    extends Bloc<NotifCounterWatcherEvent, NotifCounterWatcherState> {
  final INotificationRepository _notificationRepository;
  NotifCounterWatcherBloc(this._notificationRepository)
      : super(const NotifCounterWatcherState.initial());

  StreamSubscription<Either<DataFailure, int>>? _unreadNotifStreamSubscription;

  @override
  Stream<NotifCounterWatcherState> mapEventToState(
    NotifCounterWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveUnreadNotifsStarted: (e) async* {
        yield const NotifCounterWatcherState.loadInProgress();
        await _unreadNotifStreamSubscription?.cancel();
        _unreadNotifStreamSubscription = _notificationRepository
            .retrieveNumberUnreadNotifications(userId: e.userId)
            .listen((failureOrUnreadNotifCount) => add(
                NotifCounterWatcherEvent.unreadNotifsReceived(
                    failureOrUnreadNotifCount, e.userId)));
      },
      unreadNotifsReceived: (e) async* {
        yield e.failureOrUnreadNotifCount.fold(
            (f) => NotifCounterWatcherState.loadFailure(f),
            (unreadNotifCounter) => NotifCounterWatcherState.loadSuccess(
                unreadNotifCounter, e.userId));
      },
    );
  }

  @override
  Future<void> close() async {
    await _unreadNotifStreamSubscription?.cancel();
    return super.close();
  }
}
