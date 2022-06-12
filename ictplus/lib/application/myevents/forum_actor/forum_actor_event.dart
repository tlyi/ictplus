part of 'forum_actor_bloc.dart';

@freezed
class ForumActorEvent with _$ForumActorEvent {
  const factory ForumActorEvent.started() = _Started;
  const factory ForumActorEvent.forumLiked(ForumPost forum) = _ForumLiked;
  const factory ForumActorEvent.forumUnliked(String forumId) = _ForumUnliked;
  const factory ForumActorEvent.voted(String forumId, int index) = _Voted;
  const factory ForumActorEvent.commentChanged(String commentStr) =
      _CommentChanged;
  const factory ForumActorEvent.anonStateChanged() = _AnonStateChanged;
  const factory ForumActorEvent.commentCreated(ForumPost forum) =
      _CommentCreated;
  const factory ForumActorEvent.commentLiked(ForumPost forum, Comment comment) =
      _CommentLiked;
  const factory ForumActorEvent.commentUnliked(
      String forumId, String commentId) = _CommentUnliked;
  const factory ForumActorEvent.forumDeleted(ForumPost forum) = _ForumDeleted;
}
