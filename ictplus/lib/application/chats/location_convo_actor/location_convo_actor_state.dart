part of 'location_convo_actor_bloc.dart';

@freezed
class LocationConvoActorState with _$LocationConvoActorState {
  const factory LocationConvoActorState({
    required Either<DataFailure, String> photoUrl,
    required ChatMessage chatMessage,
    required Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
    required String ownId,
    required String convoId,
    required String messageId,
  }) = _LocationConvoActorState;

  factory LocationConvoActorState.initial() => LocationConvoActorState(
      photoUrl: right(''),
      chatMessage: ChatMessage.empty(),
      sentFailureOrSuccessOption: none(),
      ownId: '',
      convoId: '',
      messageId: UniqueId().getOrCrash());
}
