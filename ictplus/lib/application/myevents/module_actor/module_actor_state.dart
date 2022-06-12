part of 'module_actor_bloc.dart';

@freezed
class ModuleActorState with _$ModuleActorState {
  const factory ModuleActorState(
      {required Profile profile,
      required bool rebuild,
      required Either<DataFailure, Unit> failureOrSuccess}) = _ModuleActorState;

  factory ModuleActorState.initial() => ModuleActorState(
      profile: Profile.empty(), rebuild: true, failureOrSuccess: right(unit));
}
