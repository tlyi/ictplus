part of 'location_chat_form_bloc.dart';

@freezed
class LocationChatFormEvent with _$LocationChatFormEvent {
  const factory LocationChatFormEvent.titleChanged(String titleStr) =
      _TitleChanged;

  const factory LocationChatFormEvent.locationSet() = _LocationSet;
  const factory LocationChatFormEvent.messageChanged(String messageStr) =
      _MessageChanged;
  const factory LocationChatFormEvent.createdChat() = _Createdhat;
}
