import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'module_actor_event.dart';
part 'module_actor_state.dart';
part 'module_actor_bloc.freezed.dart';

@injectable
class ModuleActorBloc extends Bloc<ModuleActorEvent, ModuleActorState> {
  final IProfileRepository _profileRepository;
  ModuleActorBloc(this._profileRepository) : super(ModuleActorState.initial());

  @override
  Stream<ModuleActorState> mapEventToState(
    ModuleActorEvent event,
  ) async* {
    yield* event.map(
      retrieveProfile: (e) async* {
        yield state.copyWith(rebuild: false);
        final failureOrProfile = await _profileRepository.readOwnProfile();
        DataFailure? failure;
        Profile? profile;
        failureOrProfile.fold(
          (f) => failure = f,
          (p) => profile = p,
        );

        if (failure != null) {
          yield state.copyWith(failureOrSuccess: left(failure!));
        } else {
          yield state.copyWith(
              profile: profile!, failureOrSuccess: right(unit), rebuild: true);
        }
      },
      moduleAdded: (e) async* {
        yield state.copyWith(rebuild: false);
        Either<DataFailure, Unit> failureOrSuccess =
            await _profileRepository.followModule(e.moduleCode);
        yield state.copyWith(failureOrSuccess: failureOrSuccess, rebuild: true);
        final failureOrProfile = await _profileRepository.readOwnProfile();
        DataFailure? failure;
        Profile? profile;
        failureOrProfile.fold(
          (f) => failure = f,
          (p) => profile = p,
        );

        if (failure != null) {
          yield state.copyWith(failureOrSuccess: left(failure!));
        } else {
          yield state.copyWith(
              profile: profile!, failureOrSuccess: right(unit), rebuild: true);
        }
      },
      moduleRemoved: (e) async* {
        yield state.copyWith(rebuild: false);
        Either<DataFailure, Unit> failureOrSuccess =
            await _profileRepository.unfollowModule(e.moduleCode);
        yield state.copyWith(failureOrSuccess: failureOrSuccess, rebuild: true);
        final failureOrProfile = await _profileRepository.readOwnProfile();
        DataFailure? failure;
        Profile? profile;
        failureOrProfile.fold(
          (f) => failure = f,
          (p) => profile = p,
        );

        if (failure != null) {
          yield state.copyWith(failureOrSuccess: left(failure!));
        } else {
          yield state.copyWith(
              profile: profile!, failureOrSuccess: right(unit), rebuild: true);
        }
      },
    );
  }
}
