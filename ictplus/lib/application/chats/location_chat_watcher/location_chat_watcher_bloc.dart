import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/domain/data/chats/location_failure.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_chat_watcher_event.dart';
part 'location_chat_watcher_state.dart';
part 'location_chat_watcher_bloc.freezed.dart';

@injectable
class LocationChatWatcherBloc
    extends Bloc<LocationChatWatcherEvent, LocationChatWatcherState> {
  final IChatRepository _chatRepository;

  LocationChatWatcherBloc(this._chatRepository)
      : super(const LocationChatWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<LocationChat>>>?
      _chatStreamSubscription;

  @override
  Stream<LocationChatWatcherState> mapEventToState(
    LocationChatWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveChatsStarted: (e) async* {
        yield const LocationChatWatcherState.loadInProgress();
        final Either<LocationFailure, Position> failureOrPosition =
            await _chatRepository.getLastKnownLocation();
        LocationFailure? locationFailure;
        Position? lastKnownPosition;

        failureOrPosition.fold(
            (f) => locationFailure = f, (p) => lastKnownPosition = p);
        if (locationFailure != null) {
          yield LocationChatWatcherState.loadLocationFailure(locationFailure!);
        } else {
          DataFailure? dataFailure;
          List<String>? chatIds = [];
          List<double> distances = [];
          final Either<DataFailure, Map<String, double>> failureOrChatIdMaps =
              await _chatRepository.getNearestChatIds(lastKnownPosition!);
          failureOrChatIdMaps.fold((f) => dataFailure = f, (pairs) {
            chatIds = pairs.keys.toList();
            distances = pairs.values.toList();
          });

          if (dataFailure != null) {
            yield LocationChatWatcherState.loadDataFailure(dataFailure!);
          } else {
            await _chatStreamSubscription?.cancel();
            _chatStreamSubscription = _chatRepository
                .retrieveLocationChats(chatIds!.take(10).toList())
                .listen((failureOrChats) => add(
                    LocationChatWatcherEvent.chatsReceived(
                        failureOrChats, distances)));
          }
        }
      },
      refreshedLocation: (e) async* {
        yield const LocationChatWatcherState.loadInProgress();
        await _chatStreamSubscription?.cancel();
        final Either<LocationFailure, Position> failureOrPosition =
            await _chatRepository.getCurrentLocation();
        LocationFailure? failure;
        Position? newPosition;

        failureOrPosition.fold((f) => failure = f, (p) => newPosition = p);
        if (failure != null) {
          yield LocationChatWatcherState.loadLocationFailure(failure!);
        } else {
          add(LocationChatWatcherEvent.retrieveChatsFromNewLocationStarted(
              newPosition!));
        }
      },
      retrieveChatsFromNewLocationStarted: (e) async* {
        DataFailure? dataFailure;
        List<String>? chatIds = [];
        List<double> distances = [];
        final Either<DataFailure, Map<String, double>> failureOrChatIdMaps =
            await _chatRepository.getNearestChatIds(e.position);
        failureOrChatIdMaps.fold((f) => dataFailure = f, (pairs) {
          chatIds = pairs.keys.toList();
          distances = pairs.values.toList();
        });
        if (dataFailure != null) {
          yield LocationChatWatcherState.loadDataFailure(dataFailure!);
        } else {
          await _chatStreamSubscription?.cancel();
          _chatStreamSubscription = _chatRepository
              .retrieveLocationChats(chatIds!.take(10).toList())
              .listen((failureOrChats) => add(
                  LocationChatWatcherEvent.chatsReceived(
                      failureOrChats, distances)));
        }
      },
      chatsReceived: (e) async* {
        yield e.failureOrChats.fold(
            (f) => LocationChatWatcherState.loadDataFailure(f),
            (c) => LocationChatWatcherState.loadSuccess(c, e.distances));
      },
    );
  }

  @override
  Future<void> close() async {
    await _chatStreamSubscription?.cancel();
    return super.close();
  }
}
