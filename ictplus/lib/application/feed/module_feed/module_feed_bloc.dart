import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';

part 'module_feed_event.dart';
part 'module_feed_state.dart';
part 'module_feed_bloc.freezed.dart';

@injectable
class ModuleFeedBloc extends Bloc<ModuleFeedEvent, ModuleFeedState> {
  final IForumRepository _forumRepository;
  ModuleFeedBloc(this._forumRepository)
      : super(const ModuleFeedState.initial());

  @override
  Stream<ModuleFeedState> mapEventToState(
    ModuleFeedEvent event,
  ) async* {
    yield* event.map(
      refreshFeed: (e) async* {
        yield const ModuleFeedState.loadInProgress();

        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleFeedInitial();
        yield failureOrForums.fold(
            (f) => ModuleFeedState.loadFailure(f),
            (forums) =>
                ModuleFeedState.loadSuccess(forums, forums.length == 8, false));
      },
      retrieveMorePosts: (e) async* {
        yield ModuleFeedState.loadSuccess(e.oldPosts, true, true);

        final String lastTimestamp = e.oldPosts.last.timestamp;
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleFeedInBatches(lastTimestamp);

        DataFailure? failure;
        List<ForumPost>? newPosts;

        failureOrForums.fold((f) => failure = f, (p) => newPosts = p);
        if (failure != null) {
          yield ModuleFeedState.loadFailure(failure!);
        } else {
          List<ForumPost> posts = [];
          posts.addAll(e.oldPosts);
          posts.addAll(newPosts!);
          yield ModuleFeedState.loadSuccess(posts, posts.length == 8, false);
        }
      },
      liked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.add(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes + 1, likedUserIds: likedUserIds);
        yield ModuleFeedState.loadSuccess(
            forums, forums.length % 8 == 0, false);
      },
      unliked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.remove(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes - 1, likedUserIds: likedUserIds);
        yield ModuleFeedState.loadSuccess(
            forums, forums.length % 8 == 0, false);
      },
    );
  }
}
