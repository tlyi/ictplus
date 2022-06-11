import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/comment/comment.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';
part 'comment_watcher_bloc.freezed.dart';

@injectable
class CommentWatcherBloc
    extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  final IForumRepository _forumRepository;
  final IProfileRepository _profileRepository;

  CommentWatcherBloc(this._forumRepository, this._profileRepository)
      : super(const CommentWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Comment>>>?
      _commentStreamSubscription;

  @override
  Stream<CommentWatcherState> mapEventToState(
    CommentWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveCommentsStarted: (e) async* {
        yield const CommentWatcherState.loadInProgress();
        await _commentStreamSubscription?.cancel();
        _commentStreamSubscription = _forumRepository
            .retrieveComments(e.sortedBy, e.forumId)
            .listen((failureOrComments) =>
                add(CommentWatcherEvent.commentsReceived(failureOrComments)));
      },
      commentsReceived: (e) async* {
        DataFailure? failure;
        List<Comment>? comments;
        e.failureOrComments.fold((f) => failure = f, (c) => comments = c);

        if (failure != null) {
          yield CommentWatcherState.loadFailure(failure!);
        } else {
          add(CommentWatcherEvent.retrieveProfilesStarted(comments!));
        }
      },
      retrieveProfilesStarted: (e) async* {
        final List<Profile> profileList = [];
        for (final comment in e.comments) {
          if (comment.isAnon) {
            profileList.add(Profile.empty().copyWith(photoUrl: constants.LOGO));
          } else {
            final String userId = comment.userId;
            final Either<DataFailure, Profile> failureOrProfile =
                await _profileRepository.searchProfileByUuid(userId);

            DataFailure? failure;
            Profile? profile;

            failureOrProfile.fold((f) => failure = f, (p) => profile = p);
            if (failure != null) {
              yield CommentWatcherState.loadFailure(failure!);
            } else {
              profileList.add(profile!);
            }
          }
        }
        yield CommentWatcherState.loadSuccess(e.comments, profileList);
      },
    );
  }

  @override
  Future<void> close() async {
    await _commentStreamSubscription?.cancel();
    return super.close();
  }
}
