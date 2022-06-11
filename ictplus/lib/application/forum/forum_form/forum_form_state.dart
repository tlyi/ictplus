part of 'forum_form_bloc.dart';

@freezed
class ForumFormState with _$ForumFormState {
  const factory ForumFormState({
    required ForumPost forumPost,
    required Either<DataFailure, String> photoUrl,
    required File photoFile,
    required Poll poll,
    required Option<Either<DataFailure, Unit>> createPollFailureOrSuccessOption,
    required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
    required bool isLoading,
    required bool showErrorMessages,
    required Either<DataFailure, List<String>> moduleSuggestions,
  }) = _ForumFormState;

  factory ForumFormState.initial() => ForumFormState(
        forumPost: ForumPost.empty(),
        photoUrl: right(''),
        photoFile: File(''),
        poll: Poll.empty(),
        createFailureOrSuccessOption: none(),
        createPollFailureOrSuccessOption: none(),
        isLoading: false,
        showErrorMessages: false,
        moduleSuggestions: right([]),
      );
}
