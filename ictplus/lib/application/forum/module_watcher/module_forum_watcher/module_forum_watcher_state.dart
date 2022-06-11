part of 'module_forum_watcher_bloc.dart';

@freezed
class ModuleForumWatcherState with _$ModuleForumWatcherState {
  const factory ModuleForumWatcherState.initial() = _Initial;
  const factory ModuleForumWatcherState.loadInProgress() = _LoadInProgress;
  const factory ModuleForumWatcherState.loadSuccess(
      List<ForumPost> forums,
      bool hasMore,
      bool isRetrieving,
      String moduleCode,
      String sortedBy) = _LoadSuccess;
  const factory ModuleForumWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
