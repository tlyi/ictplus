part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorEvent with _$ProfileActorEvent {
  const factory ProfileActorEvent.loadingOtherProfile(String userId) =
      _LoadingOtherProfile;
  const factory ProfileActorEvent.loadingOwnProfile() = _LoadingOwnProfile;
  const factory ProfileActorEvent.addedFollower() = _AddedFollower;
  const factory ProfileActorEvent.removedFollower() = _RemovedFollower;
  const factory ProfileActorEvent.openStats() = _OpenStats;
  const factory ProfileActorEvent.moreStats() = _MoreStats;
}
