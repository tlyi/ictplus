part of 'location_chat_form_bloc.dart';

@freezed
class LocationChatFormState with _$LocationChatFormState {
  const factory LocationChatFormState({
    required LocationChat locationChat,
    required IntroMessage introMessage,
    required bool isSaving,
    required bool showErrorMessages,
    required bool isGettingLocation,
    required bool locationSet,
    required Either<LocationFailure, Position> failureOrCurrentLocation,
    required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
  }) = _LocationChatFormState;

  factory LocationChatFormState.initial() => LocationChatFormState(
        locationChat: LocationChat.empty(),
        introMessage: IntroMessage(''),
        isSaving: false,
        showErrorMessages: false,
        isGettingLocation: false,
        locationSet: false,
        failureOrCurrentLocation: right(Position(
            longitude: 0,
            latitude: 0,
            timestamp: DateTime.now(),
            accuracy: 0,
            altitude: 0,
            heading: 0,
            speed: 0,
            speedAccuracy: 0)),
        createFailureOrSuccessOption: none(),
      );
}
