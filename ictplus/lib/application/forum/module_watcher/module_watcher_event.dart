part of 'module_watcher_bloc.dart';

@freezed
class ModuleWatcherEvent with _$ModuleWatcherEvent {
  const factory ModuleWatcherEvent.retrieveModulesStarted() =
      _RetrieveModulesStarted;
  const factory ModuleWatcherEvent.modulesReceived(
      Either<DataFailure, List<Mod>> failureOrModules) = _ModulesReceived;
}
