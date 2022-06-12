part of 'poll_watcher_bloc.dart';

@freezed
class PollWatcherState with _$PollWatcherState {
  const factory PollWatcherState.initial() = _Initial;
  const factory PollWatcherState.loadInProgress() = _LoadInProgress;
  const factory PollWatcherState.loadSuccess(Poll poll) = _LoadSuccess;
  const factory PollWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
