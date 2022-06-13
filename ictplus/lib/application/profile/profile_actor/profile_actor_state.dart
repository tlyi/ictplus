part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState({
    required Either<DataFailure, Profile> failureOrUserProfile,
    required String ownId,
    required String userId,
    required bool isLoading,
  }) = _ProfileActorState;

  factory ProfileActorState.initial() => ProfileActorState(
        failureOrUserProfile: right(Profile.empty()),
        ownId: '',
        userId: '',
        isLoading: true,
      );
}
