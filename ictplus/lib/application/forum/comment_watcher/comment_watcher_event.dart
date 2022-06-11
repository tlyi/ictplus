part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherEvent with _$CommentWatcherEvent {
  const factory CommentWatcherEvent.retrieveCommentsStarted(
      String forumId, String sortedBy) = _RetrieveCommentsStarted;
  const factory CommentWatcherEvent.commentsReceived(
      Either<DataFailure, List<Comment>> failureOrComments) = _CommentsReceived;
  const factory CommentWatcherEvent.retrieveProfilesStarted(
      List<Comment> comments) = _RetrieveProfilesStarted;
}
