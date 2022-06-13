part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorEvent with _$ProfileActorEvent {
  const factory ProfileActorEvent.loadingOtherProfile(String userId) =
      _LoadingOtherProfile;
  const factory ProfileActorEvent.loadingOwnProfile() = _LoadingOwnProfile;
}
