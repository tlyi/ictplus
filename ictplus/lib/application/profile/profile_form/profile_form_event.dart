part of 'profile_form_bloc.dart';

@freezed
class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.photoChanged(File photo) = _PhotoChanged;
  const factory ProfileFormEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory ProfileFormEvent.courseChanged(String courseStr) =
      _CourseChanged;
  const factory ProfileFormEvent.bioChanged(String bioStr) = _BioChanged;
  const factory ProfileFormEvent.saved() = _Saved;
  const factory ProfileFormEvent.getProfile() = _GetProfile;
  const factory ProfileFormEvent.searchedModule(String searchStr) =
      _SearchedModule;
  const factory ProfileFormEvent.addedModule(String moduleStr) = _AddedModule;
  const factory ProfileFormEvent.removedModule(int index) = _RemovedModule;
}
