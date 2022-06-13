import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
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
        yield state.copyWith(
          failureOrUserProfile: failureOrUserProfile,
          ownId: ownId,
          userId: e.userId,
          isLoading: false,
        );
      },
      loadingOwnProfile: (e) async* {
        yield state.copyWith(isLoading: true);
        final String ownId = await _profileRepository.getUserId();
        final Either<DataFailure, Profile> failureOrUserProfile =
            await _profileRepository.readOwnProfile();
        yield state.copyWith(
          failureOrUserProfile: failureOrUserProfile,
          ownId: ownId,
          userId: ownId,
          isLoading: false,
        );
      },
    );
  }
}
