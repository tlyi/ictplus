part of 'forum_actor_bloc.dart';

@freezed
class ForumActorEvent with _$ForumActorEvent {
  const factory ForumActorEvent.started() = _Started;
  const factory ForumActorEvent.voted(String forumId, int index) = _Voted;
}
