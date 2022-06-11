part of 'forum_form_bloc.dart';

@freezed
class ForumFormEvent with _$ForumFormEvent {
  const factory ForumFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory ForumFormEvent.searchedModule(String searchStr) =
      _SearchedModule;
  const factory ForumFormEvent.tagChanged(String tagStr) = _TagChanged;
  const factory ForumFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory ForumFormEvent.anonStateChanged() = _AnonStateChanged;
  const factory ForumFormEvent.photoChanged(File photo) = _PhotoChanged;
  const factory ForumFormEvent.photoAdded() = _PhotoAdded;
  const factory ForumFormEvent.pollAdded() = _PollAdded;
  const factory ForumFormEvent.pollNumOptionsChanged(int numOptions) =
      _PollNumOptionsChanged;
  const factory ForumFormEvent.pollTitleChanged(String pollTitleStr) =
      _PollTitleChanged;
  const factory ForumFormEvent.pollOptionChanged(int index, String optionStr) =
      _PollOptionChanged;
  const factory ForumFormEvent.photoRemoved() = _PhotoRemoved;
  const factory ForumFormEvent.pollRemoved() = _PollRemoved;
  const factory ForumFormEvent.createdPost() = _CreatedPost;
}
