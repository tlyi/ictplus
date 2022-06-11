import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:injectable/injectable.dart';

part 'convo_watcher_event.dart';
part 'convo_watcher_state.dart';
part 'convo_watcher_bloc.freezed.dart';

@injectable
class ConvoWatcherBloc extends Bloc<ConvoWatcherEvent, ConvoWatcherState> {
  final IChatRepository _chatRepository;

  ConvoWatcherBloc(this._chatRepository)
      : super(const ConvoWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<ChatMessage>>>?
      _convoStreamSubscription;

  @override
  Stream<ConvoWatcherState> mapEventToState(
    ConvoWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveConvoStarted: (e) async* {
        yield const ConvoWatcherState.loadMessagesInProgress();
        final ownId = await _chatRepository.getOwnId();

        final convoId = ownId.compareTo(e.otherId) > 0
            ? '${ownId}_${e.otherId}'
            : '${e.otherId}_$ownId';

        await _convoStreamSubscription?.cancel();
        _convoStreamSubscription = _chatRepository.getConvo(convoId).listen(
            (failureOrMessages) =>
                add(ConvoWatcherEvent.convoReceived(failureOrMessages)));
      },
      retrieveConvoEnded: (e) async* {
        await _convoStreamSubscription?.cancel();
      },
      convoReceived: (e) async* {
        yield e.failureOrMessages.fold(
            (failure) => ConvoWatcherState.loadMessagesFailure(failure),
            (messages) => ConvoWatcherState.loadMessagesSuccess(messages));
      },
    );
  }

  @override
  Future<void> close() async {
    await _convoStreamSubscription?.cancel();
    return super.close();
  }
}
