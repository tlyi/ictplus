part of 'forum_post_watcher_bloc.dart';

@freezed
class ForumPostWatcherState with _$ForumPostWatcherState {
  const factory ForumPostWatcherState.initial() = _Initial;
  const factory ForumPostWatcherState.loadInProgress() = _LoadInProgress;
  const factory ForumPostWatcherState.loadSuccess(ForumPost forum) =
      _LoadSuccess;
  const factory ForumPostWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
