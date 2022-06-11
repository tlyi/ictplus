part of 'location_convo_actor_bloc.dart';

@freezed
class LocationConvoActorEvent with _$LocationConvoActorEvent {
  const factory LocationConvoActorEvent.convoOpened(String convoId) =
      _ConvoOpened;
  const factory LocationConvoActorEvent.messageChanged(String message) =
      _MessageChanged;
  const factory LocationConvoActorEvent.photoSent(File photo) = _PhotoChanged;
  const factory LocationConvoActorEvent.messageSent() = _MessageSent;
}
