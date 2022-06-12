part of 'forum_actor_bloc.dart';

@freezed
class ForumActorState with _$ForumActorState {
  const factory ForumActorState({
    required String userId,
    required Comment comment,
    required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
    required bool isLoading,
    required bool showErrorMessages,
  }) = _ForumActorState;

  factory ForumActorState.initial() => ForumActorState(
        userId: '',
        comment: Comment.empty(),
        createFailureOrSuccessOption: none(),
        isLoading: false,
        showErrorMessages: false,
      );
}
