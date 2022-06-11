import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/domain/data/chats/location_failure.dart';
import 'package:ictplus/domain/data/chats/value_objects.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_chat_form_event.dart';
part 'location_chat_form_state.dart';
part 'location_chat_form_bloc.freezed.dart';

@injectable
class LocationChatFormBloc
    extends Bloc<LocationChatFormEvent, LocationChatFormState> {
  final IChatRepository _chatRepository;

  LocationChatFormBloc(this._chatRepository)
      : super(LocationChatFormState.initial());

  @override
  Stream<LocationChatFormState> mapEventToState(
    LocationChatFormEvent event,
  ) async* {
    yield* event.map(titleChanged: (e) async* {
      yield state.copyWith(
          locationChat: state.locationChat.copyWith(
        chatTitle: Title(e.titleStr),
      ));
    }, messageChanged: (e) async* {
      yield state.copyWith(introMessage: IntroMessage(e.messageStr));
    }, locationSet: (e) async* {
      yield state.copyWith(isGettingLocation: true);
      final Either<LocationFailure, Position> failureOrCurrentLocation =
          await _chatRepository.getCurrentLocation();

      yield failureOrCurrentLocation.fold((failure) {
        print(failure);
        return state.copyWith(
          locationSet: false,
          isGettingLocation: false,
          failureOrCurrentLocation: failureOrCurrentLocation,
        );
      },
          (position) => state.copyWith(
              locationSet: true,
              isGettingLocation: false,
              failureOrCurrentLocation: failureOrCurrentLocation,
              locationChat: state.locationChat.copyWith(
                  latitude: position.latitude, longitude: position.longitude)));
    }, createdChat: (e) async* {
      Either<DataFailure, Unit>? failureOrSuccess;

      final bool isTitleValid = state.locationChat.chatTitle.isValid();
      final bool isMessageValid = state.introMessage.isValid();
      final String userId = await _chatRepository.getOwnId();

      if (isTitleValid && isMessageValid && state.locationSet) {
        yield state.copyWith(
            isSaving: true,
            locationChat: state.locationChat.copyWith(
              lastMessage: state.introMessage.getOrCrash(),
              creatorUserId: userId,
            ),
            createFailureOrSuccessOption: none());

        failureOrSuccess = await _chatRepository
            .createLocationChat(state.locationChat.copyWith(
          lastSenderId: userId,
          lastMessage: state.introMessage.getOrCrash(),
          creatorUserId: userId,
        ));
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        createFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
