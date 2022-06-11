import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/chat.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'chat_watcher_event.dart';
part 'chat_watcher_state.dart';
part 'chat_watcher_bloc.freezed.dart';

@injectable
class ChatWatcherBloc extends Bloc<ChatWatcherEvent, ChatWatcherState> {
  final IChatRepository _chatRepository;

  ChatWatcherBloc(this._chatRepository)
      : super(const ChatWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Chat>>>? _chatStreamSubscription;

  @override
  Stream<ChatWatcherState> mapEventToState(
    ChatWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveChatsStarted: (e) async* {
        yield const ChatWatcherState.loadInProgress();
        final ownId = await _chatRepository.getOwnId();
        await _chatStreamSubscription?.cancel();
        _chatStreamSubscription = _chatRepository
            .retrieveUserChats(ownId)
            .listen((failureOrChats) =>
                add(ChatWatcherEvent.chatsReceived(failureOrChats)));
      },
      chatsReceived: (e) async* {
        DataFailure? failure;
        List<Chat>? chats;

        e.failureOrChats.fold((f) => failure = f, (c) => chats = c);
        if (failure != null) {
          yield ChatWatcherState.loadFailure(failure!);
        } else {
          add(ChatWatcherEvent.retrieveProfilesStarted(chats!));
        }
      },
      retrieveProfilesStarted: (e) async* {
        final List<Profile> profileList = [];
        final ownId = await _chatRepository.getOwnId();
        for (final chat in e.chats) {
          final String otherId =
              chat.userIds[0] == ownId ? chat.userIds[1] : chat.userIds[0];
          final Either<DataFailure, Profile> failureOrProfile =
              await _chatRepository.searchProfileByUuid(otherId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield ChatWatcherState.loadFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield ChatWatcherState.loadSuccess(
          e.chats,
          profileList,
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _chatStreamSubscription?.cancel();
    return super.close();
  }
}
