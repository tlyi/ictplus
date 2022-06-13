import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/myevents/i_forum_repository.dart';
import 'package:ictplus/domain/data/myevents/poll/poll.dart';
import 'package:injectable/injectable.dart';

part 'poll_watcher_event.dart';
part 'poll_watcher_state.dart';
part 'poll_watcher_bloc.freezed.dart';

@injectable
class PollWatcherBloc extends Bloc<PollWatcherEvent, PollWatcherState> {
  final IForumRepository _forumRepository;
  PollWatcherBloc(
    this._forumRepository,
  ) : super(const PollWatcherState.initial());
  StreamSubscription<Either<DataFailure, Poll>>? _pollStreamSubscription;

  @override
  Stream<PollWatcherState> mapEventToState(
    PollWatcherEvent event,
  ) async* {
    yield* event.map(
      retrievePollStarted: (e) async* {
        yield const PollWatcherState.loadInProgress();
        await _pollStreamSubscription?.cancel();
        _pollStreamSubscription = _forumRepository
            .retrievePoll(e.forumId)
            .listen((failureOrPoll) =>
                add(PollWatcherEvent.pollReceived(failureOrPoll)));
      },
      pollReceived: (e) async* {
        yield e.failureOrPoll.fold((f) => PollWatcherState.loadFailure(f),
            (poll) => PollWatcherState.loadSuccess(poll));
      },
    );
  }

  @override
  Future<void> close() async {
    await _pollStreamSubscription?.cancel();
    return super.close();
  }
}
