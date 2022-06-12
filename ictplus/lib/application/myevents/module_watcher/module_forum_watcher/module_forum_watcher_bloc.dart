import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:injectable/injectable.dart';

part 'module_forum_watcher_event.dart';
part 'module_forum_watcher_state.dart';
part 'module_forum_watcher_bloc.freezed.dart';

@injectable
class ModuleForumWatcherBloc
    extends Bloc<ModuleForumWatcherEvent, ModuleForumWatcherState> {
  final IForumRepository _forumRepository;
  ModuleForumWatcherBloc(this._forumRepository)
      : super(const ModuleForumWatcherState.initial());

  @override
  Stream<ModuleForumWatcherState> mapEventToState(
    ModuleForumWatcherEvent event,
  ) async* {
    yield* event.map(
      refreshFeed: (e) async* {
        yield const ModuleForumWatcherState.loadInProgress();

        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleForumsInitial(
                e.moduleCode, e.sortedBy);
        yield failureOrForums.fold(
            (f) => ModuleForumWatcherState.loadFailure(f),
            (forums) => ModuleForumWatcherState.loadSuccess(
                forums, forums.length == 8, false, e.moduleCode, e.sortedBy));
      },
      retrieveMorePosts: (e) async* {
        yield ModuleForumWatcherState.loadSuccess(
            e.oldPosts, true, true, e.moduleCode, e.sortedBy);

        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleForumsInBatches(e.moduleCode,
                e.sortedBy, e.oldPosts.last.timestamp, e.oldPosts.last.likes);

        DataFailure? failure;
        List<ForumPost>? newPosts;

        failureOrForums.fold((f) => failure = f, (p) => newPosts = p);
        if (failure != null) {
          yield ModuleForumWatcherState.loadFailure(failure!);
        } else {
          List<ForumPost> posts = [];
          posts.addAll(e.oldPosts);
          posts.addAll(newPosts!);
          yield ModuleForumWatcherState.loadSuccess(
              posts, posts.length == 8, false, e.moduleCode, e.sortedBy);
        }
      },
      liked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.add(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes + 1, likedUserIds: likedUserIds);

        yield ModuleForumWatcherState.loadSuccess(
            forums, forums.length % 8 == 0, false, e.moduleCode, e.sortedBy);
      },
      unliked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.remove(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes - 1, likedUserIds: likedUserIds);
        yield ModuleForumWatcherState.loadSuccess(
            forums, forums.length % 8 == 0, false, e.moduleCode, e.sortedBy);
      },
    );
  }
}
