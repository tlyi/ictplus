part of 'module_forum_watcher_bloc.dart';

@freezed
class ModuleForumWatcherEvent with _$ModuleForumWatcherEvent {
  const factory ModuleForumWatcherEvent.refreshFeed(
      String moduleCode, String sortedBy) = _RefreshFeed;
  const factory ModuleForumWatcherEvent.retrieveMorePosts(
          String moduleCode, String sortedBy, List<ForumPost> oldPosts) =
      _RetrieveMorePosts;
  const factory ModuleForumWatcherEvent.liked(List<ForumPost> forums, int index,
      String userId, String moduleCode, String sortedBy) = _Liked;
  const factory ModuleForumWatcherEvent.unliked(List<ForumPost> forums,
      int index, String userId, String moduleCode, String sortedBy) = _Unliked;
}
