import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/chats/value_objects.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

part 'location_convo_actor_event.dart';
part 'location_convo_actor_state.dart';
part 'location_convo_actor_bloc.freezed.dart';

@injectable
class LocationConvoActorBloc
    extends Bloc<LocationConvoActorEvent, LocationConvoActorState> {
  final IChatRepository _chatRepository;
  LocationConvoActorBloc(this._chatRepository)
      : super(LocationConvoActorState.initial());

  @override
  Stream<LocationConvoActorState> mapEventToState(
    LocationConvoActorEvent event,
  ) async* {
    yield* event.map(
      convoOpened: (e) async* {
        final ownId = await _chatRepository.getOwnId();
        yield state.copyWith(
          ownId: ownId,
          convoId: e.convoId,
          chatMessage: state.chatMessage.copyWith(senderId: ownId),
        );
      },
      messageChanged: (e) async* {
        yield state.copyWith(
            chatMessage: state.chatMessage
                .copyWith(messageBody: MessageBody(e.message)));
      },
      photoSent: (e) async* {
        final failureOrString = await _chatRepository.uploadPhoto(
            e.photo, state.convoId, state.messageId);
        String url = '';
        failureOrString.fold(
          (f) {
            url = constants.ERROR_DP;
            print(f);
          },
          (s) {
            url = s;
          },
        );
        yield state.copyWith(
            photoUrl: failureOrString,
            chatMessage: state.chatMessage.copyWith(photoUrl: url));
        add(const LocationConvoActorEvent.messageSent());
      },
      messageSent: (e) async* {
        if (state.chatMessage.photoUrl != '' ||
            state.chatMessage.messageBody.getOrCrash() != '') {
          Either<DataFailure, Unit> failureOrSuccess;
          failureOrSuccess = await _chatRepository.createLocationMessage(
              convoId: state.convoId,
              messageId: state.messageId,
              chatMessage:
                  state.chatMessage.copyWith(messageId: state.messageId));

          yield state.copyWith(
              chatMessage: state.chatMessage
                  .copyWith(messageBody: MessageBody(''), photoUrl: ''),
              sentFailureOrSuccessOption: optionOf(failureOrSuccess),
              messageId: UniqueId().getOrCrash());
        }
      },
    );
  }
}
