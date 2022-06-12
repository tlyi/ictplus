import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

part 'forum_post_watcher_event.dart';
part 'forum_post_watcher_state.dart';
part 'forum_post_watcher_bloc.freezed.dart';

@injectable
class ForumPostWatcherBloc
    extends Bloc<ForumPostWatcherEvent, ForumPostWatcherState> {
  final IForumRepository _forumRepository;
  final IProfileRepository _profileRepository;

  ForumPostWatcherBloc(this._forumRepository, this._profileRepository)
      : super(const ForumPostWatcherState.initial());

  StreamSubscription<Either<DataFailure, ForumPost>>?
      _forumPostStreamSubscription;

  @override
  Stream<ForumPostWatcherState> mapEventToState(
    ForumPostWatcherEvent event,
  ) async* {
    yield* event.map(retrieveForumPostStarted: (e) async* {
      yield const ForumPostWatcherState.loadInProgress();
      await _forumPostStreamSubscription?.cancel();
      _forumPostStreamSubscription = _forumRepository
          .retrieveForumPost(e.forumId)
          .listen((failureOrForumPost) =>
              add(ForumPostWatcherEvent.forumPostReceived(failureOrForumPost)));
    }, forumPostReceived: (e) async* {
      e.failureOrForumPost.fold((f) async* {
        yield ForumPostWatcherState.loadFailure(f);
      }, (forum) => add(ForumPostWatcherEvent.posterProfileRetrieved(forum)));
    }, posterProfileRetrieved: (e) async* {
      if (e.forum.isAnon) {
        yield ForumPostWatcherState.loadSuccess(
            e.forum, Profile.empty().copyWith(photoUrl: constants.LOGO));
      } else {
        final Either<DataFailure, Profile> posterProfileOrFailure =
            await _profileRepository.searchProfileByUuid(e.forum.posterUserId);
        final Profile posterProfile = posterProfileOrFailure.getOrElse(
            () => Profile.empty().copyWith(photoUrl: constants.ERROR_DP));
        yield ForumPostWatcherState.loadSuccess(e.forum, posterProfile);
      }
    });
  }

  @override
  Future<void> close() async {
    await _forumPostStreamSubscription?.cancel();
    return super.close();
  }
}
