part of 'module_watcher_bloc.dart';

@freezed
class ModuleWatcherState with _$ModuleWatcherState {
  const factory ModuleWatcherState.initial() = _Initial;
  const factory ModuleWatcherState.loadInProgress() = _LoadInProgress;
  const factory ModuleWatcherState.loadSuccess(List<Mod> modules) =
      _LoadSuccess;
  const factory ModuleWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}
