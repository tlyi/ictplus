import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'location_convo_watcher_event.dart';
part 'location_convo_watcher_state.dart';
part 'location_convo_watcher_bloc.freezed.dart';

@injectable
class LocationConvoWatcherBloc
    extends Bloc<LocationConvoWatcherEvent, LocationConvoWatcherState> {
  final IChatRepository _chatRepository;
  final IProfileRepository _profileRepository;

  LocationConvoWatcherBloc(this._chatRepository, this._profileRepository)
      : super(const LocationConvoWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<ChatMessage>>>?
      _convoStreamSubscription;

  @override
  Stream<LocationConvoWatcherState> mapEventToState(
    LocationConvoWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveConvoStarted: (e) async* {
        yield const LocationConvoWatcherState.loadMessagesInProgress();

        await _convoStreamSubscription?.cancel();
        _convoStreamSubscription = _chatRepository
            .getLocationConvo(e.convoId)
            .listen((failureOrMessages) => add(
                LocationConvoWatcherEvent.convoReceived(failureOrMessages)));
      },
      retrieveConvoEnded: (e) async* {
        await _convoStreamSubscription?.cancel();
      },
      convoReceived: (e) async* {
        DataFailure? failure;
        List<ChatMessage>? messages;

        e.failureOrMessages.fold((f) => failure = f, (m) => messages = m);
        if (failure != null) {
          yield LocationConvoWatcherState.loadMessagesFailure(failure!);
        } else {
          add(LocationConvoWatcherEvent.retrieveProfilesStarted(messages!));
        }
      },
      retrieveProfilesStarted: (e) async* {
        final List<Profile> profileList = [];
        for (final message in e.messages) {
          final String userId = message.senderId;
          final Either<DataFailure, Profile> failureOrProfile =
              await _profileRepository.searchProfileByUuid(userId);

          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);
          if (failure != null) {
            yield LocationConvoWatcherState.loadMessagesFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield LocationConvoWatcherState.loadMessagesSuccess(
            e.messages, profileList);
      },
    );
  }

  @override
  Future<void> close() async {
    await _convoStreamSubscription?.cancel();
    return super.close();
  }
}
