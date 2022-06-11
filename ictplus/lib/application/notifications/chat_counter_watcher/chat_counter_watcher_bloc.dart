import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/notifications/i_notification_repository.dart';
import 'package:injectable/injectable.dart';

part 'chat_counter_watcher_event.dart';
part 'chat_counter_watcher_state.dart';
part 'chat_counter_watcher_bloc.freezed.dart';

@injectable
class ChatCounterWatcherBloc
    extends Bloc<ChatCounterWatcherEvent, ChatCounterWatcherState> {
  final INotificationRepository _notificationRepository;
  ChatCounterWatcherBloc(this._notificationRepository)
      : super(const ChatCounterWatcherState.initial());

  StreamSubscription<Either<DataFailure, int>>? _unreadChatStreamSubscription;

  @override
  Stream<ChatCounterWatcherState> mapEventToState(
    ChatCounterWatcherEvent event,
  ) async* {
    yield* event.map(retrieveUnreadChatsStarted: (e) async* {
      yield const ChatCounterWatcherState.loadInProgress();
      await _unreadChatStreamSubscription?.cancel();
      _unreadChatStreamSubscription = _notificationRepository
          .retrieveNumberUnreadChats(userId: e.userId)
          .listen((failureOrUnreadChatCount) => add(
              ChatCounterWatcherEvent.unreadChatsReceived(
                  failureOrUnreadChatCount)));
    }, unreadChatsReceived: (e) async* {
      yield e.failureOrUnreadChatCount.fold(
          (f) => ChatCounterWatcherState.loadFailure(f),
          (unreadChatCounter) =>
              ChatCounterWatcherState.loadSuccess(unreadChatCounter));
    });
  }

  @override
  Future<void> close() async {
    await _unreadChatStreamSubscription?.cancel();
    return super.close();
  }
}
