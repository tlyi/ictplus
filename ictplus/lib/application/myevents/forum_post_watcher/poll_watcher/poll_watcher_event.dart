part of 'poll_watcher_bloc.dart';

@freezed
class PollWatcherEvent with _$PollWatcherEvent {
  const factory PollWatcherEvent.retrievePollStarted(String forumId) = _Started;
  const factory PollWatcherEvent.pollReceived(
      Either<DataFailure, Poll> failureOrPoll) = _PollReceived;
}
