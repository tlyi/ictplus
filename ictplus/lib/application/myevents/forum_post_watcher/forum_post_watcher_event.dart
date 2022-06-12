part of 'forum_post_watcher_bloc.dart';

@freezed
class ForumPostWatcherEvent with _$ForumPostWatcherEvent {
  const factory ForumPostWatcherEvent.retrieveForumPostStarted(String forumId) =
      _Started;
  const factory ForumPostWatcherEvent.forumPostReceived(
      Either<DataFailure, ForumPost> failureOrForumPost) = _ForumPostReceived;
  const factory ForumPostWatcherEvent.posterProfileRetrieved(ForumPost forum) =
      _PosterProfileRetrieved;
}
