part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;
  const factory CommentWatcherState.loadInProgress() = _LoadInProgress;
  const factory CommentWatcherState.loadSuccess(
      List<Comment> comments, List<Profile> profileList) = _LoadSuccess;
  const factory CommentWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
