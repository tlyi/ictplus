part of 'profile_form_bloc.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required Either<DataFailure, String> photoUrl,
    required Profile profile,
    required bool isSaving,
    required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
    required bool isLoading,
    required Either<DataFailure, Profile> currentProfile,
    required String currentUsername,
    required bool showErrorMessages,
    required Either<DataFailure, List<String>> moduleSuggestions,
    required bool refreshTags,
    required bool usernameChanged
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        photoUrl: right(constants.randomPhotoUrl),
        profile: Profile.empty(),
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        isLoading: true,
        currentProfile: right(Profile.empty()),
        currentUsername: '',
        showErrorMessages: false,
        moduleSuggestions: right([]),
        refreshTags: true,
        usernameChanged: false,
      );
}
