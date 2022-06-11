import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';

part 'friend_feed_event.dart';
part 'friend_feed_state.dart';
part 'friend_feed_bloc.freezed.dart';

@injectable
class FriendFeedBloc extends Bloc<FriendFeedEvent, FriendFeedState> {
  final IForumRepository _forumRepository;

  FriendFeedBloc(this._forumRepository)
      : super(const FriendFeedState.initial());

  @override
  Stream<FriendFeedState> mapEventToState(
    FriendFeedEvent event,
  ) async* {
    yield* event.map(
      refreshFeed: (e) async* {
        yield const FriendFeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();

        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveFriendFeedInitial(userId);

        DataFailure? failure;
        List<ForumPost>? posts;

        failureOrForums.fold((f) => failure = f, (p) => posts = p);
        if (failure != null) {
          yield FriendFeedState.loadFailure(failure!);
        } else {
          add(FriendFeedEvent.getProfiles(posts!));
        }
      },
      getProfiles: (e) async* {
        final List<Profile> profileList = [];
        for (final post in e.posts) {
          final Either<DataFailure, Profile> failureOrProfile =
              await _forumRepository.searchProfileByUuid(post.posterUserId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield FriendFeedState.loadFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield FriendFeedState.loadSuccess(
            e.posts, profileList, e.posts.length == 8, false);
      },
      liked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.add(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes + 1, likedUserIds: likedUserIds);
        yield FriendFeedState.loadSuccess(
            forums, e.profiles, forums.length % 8 == 0, false);
      },
      unliked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.remove(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes - 1, likedUserIds: likedUserIds);
        yield FriendFeedState.loadSuccess(
            forums, e.profiles, forums.length % 8 == 0, false);
      },
      retrieveMorePosts: (e) async* {
        yield FriendFeedState.loadSuccess(
            e.oldPosts, e.oldProfiles, true, true);
        final userId = await _forumRepository.getOwnId();
        final String lastTimestamp = e.oldPosts.last.timestamp;
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveFriendFeedInBatches(
                userId, lastTimestamp);

        DataFailure? failure;
        List<ForumPost>? newPosts;

        failureOrForums.fold((f) => failure = f, (p) => newPosts = p);
        if (failure != null) {
          yield FriendFeedState.loadFailure(failure!);
        } else {
          List<ForumPost> posts = [];
          posts.addAll(e.oldPosts);
          posts.addAll(newPosts!);
          add(FriendFeedEvent.retrieveMoreProfiles(
              newPosts!, posts, e.oldProfiles));
        }
      },
      retrieveMoreProfiles: (e) async* {
        final List<Profile> profileList = e.oldProfiles;
        for (final post in e.newPosts) {
          final Either<DataFailure, Profile> failureOrProfile =
              await _forumRepository.searchProfileByUuid(post.posterUserId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield FriendFeedState.loadFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield FriendFeedState.loadSuccess(
            e.updatedPosts, profileList, e.newPosts.length == 8, false);
      },
    );
  }
}
