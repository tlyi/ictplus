import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'profile_actor_event.dart';
part 'profile_actor_state.dart';
part 'profile_actor_bloc.freezed.dart';

@injectable
class ProfileActorBloc extends Bloc<ProfileActorEvent, ProfileActorState> {
  final IProfileRepository _profileRepository;
  ProfileActorBloc(this._profileRepository)
      : super(ProfileActorState.initial());

  @override
  Stream<ProfileActorState> mapEventToState(
    ProfileActorEvent event,
  ) async* {
    yield* event.map(
      loadingOtherProfile: (e) async* {
        yield state.copyWith(isLoading: true);
        final Either<DataFailure, Profile> failureOrUserProfile =
            await _profileRepository.readOtherProfile(e.userId);
        final String ownId = await _profileRepository.getUserId();
        final bool isFollowing =
            await _profileRepository.checkIfFollowing(e.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(e.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(e.userId);
        final Either<DataFailure, List<ForumPost>> failureOrForumsPosted =
            await _profileRepository.retrieveMyForums(e.userId);
        yield state.copyWith(
            failureOrUserProfile: failureOrUserProfile,
            ownId: ownId,
            userId: e.userId,
            isLoading: false,
            isFollowing: isFollowing,
            failureOrFollowing: failureOrFollowing,
            failureOrFollowers: failureOrFollowers,
            failureOrForumsPosted: failureOrForumsPosted);
      },
      loadingOwnProfile: (e) async* {
        yield state.copyWith(isLoading: true);
        final String ownId = await _profileRepository.getUserId();
        final Either<DataFailure, Profile> failureOrUserProfile =
            await _profileRepository.readOwnProfile();

        final Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(ownId);
        final Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(ownId);
        final Either<DataFailure, List<ForumPost>> failureOrForumsPosted =
            await _profileRepository.retrieveMyForums(ownId);
        yield state.copyWith(
          failureOrUserProfile: failureOrUserProfile,
          ownId: ownId,
          userId: ownId,
          isLoading: false,
          isFollowing: false,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
          failureOrForumsPosted: failureOrForumsPosted,
        );
      },
      addedFollower: (e) async* {
        await _profileRepository.addFollower(state.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(state.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: true,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
        );
      },
      removedFollower: (e) async* {
        await _profileRepository.removeFollower(state.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(state.userId);
        final Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: false,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
        );
      },
      openStats: (e) async* {
        yield state.copyWith(statsDisplay: 15);
      },
      moreStats: (e) async* {
        yield state.copyWith(statsDisplay: state.statsDisplay + 10);
      },
    );
  }
}
