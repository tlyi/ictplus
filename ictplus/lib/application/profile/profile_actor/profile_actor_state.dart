part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState({
    required Either<DataFailure, Profile> failureOrUserProfile,
    required String ownId,
    required String userId,
    required bool isLoading,
    required bool isFollowing,
    required Either<DataFailure, List<Profile>> failureOrFollowing,
    required Either<DataFailure, List<Profile>> failureOrFollowers,
    required Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
    required int statsDisplay,
  }) = _ProfileActorState;

  factory ProfileActorState.initial() => ProfileActorState(
        failureOrUserProfile: right(Profile.empty()),
        ownId: '',
        userId: '',
        isLoading: true,
        isFollowing: false,
        failureOrFollowing: right([]),
        failureOrFollowers: right([]),
        failureOrForumsPosted: right([]),
        statsDisplay: 15,
      );
}
