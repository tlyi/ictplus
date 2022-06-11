import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:ictplus/domain/mods/mod.dart';
import 'package:injectable/injectable.dart';

part 'module_watcher_event.dart';
part 'module_watcher_state.dart';
part 'module_watcher_bloc.freezed.dart';

@injectable
class ModuleWatcherBloc extends Bloc<ModuleWatcherEvent, ModuleWatcherState> {
  final IForumRepository _forumRepository;
  ModuleWatcherBloc(this._forumRepository)
      : super(const ModuleWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Mod>>>? _modStreamSubscription;

  @override
  Stream<ModuleWatcherState> mapEventToState(
    ModuleWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveModulesStarted: (e) async* {
        yield const ModuleWatcherState.loadInProgress();

        await _modStreamSubscription?.cancel();

        _modStreamSubscription = _forumRepository.retrieveModules().listen(
            (failureOrModules) =>
                add(ModuleWatcherEvent.modulesReceived(failureOrModules)));
      },
      modulesReceived: (e) async* {
        yield e.failureOrModules.fold((f) => ModuleWatcherState.loadFailure(f),
            (modules) => ModuleWatcherState.loadSuccess(modules));
      },
    );
  }

  @override
  Future<void> close() async {
    await _modStreamSubscription?.cancel();
    return super.close();
  }
}
