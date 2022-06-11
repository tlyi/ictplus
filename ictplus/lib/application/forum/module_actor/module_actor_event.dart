part of 'module_actor_bloc.dart';

@freezed
class ModuleActorEvent with _$ModuleActorEvent {
  const factory ModuleActorEvent.retrieveProfile() = _RetrieveProfile;
  const factory ModuleActorEvent.moduleAdded(String moduleCode) = _ModuleAdded;
  const factory ModuleActorEvent.moduleRemoved(String moduleCode) =
      _ModuleRemoved;
}
