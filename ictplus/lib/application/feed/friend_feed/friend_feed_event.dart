part of 'friend_feed_bloc.dart';

@freezed
class FriendFeedEvent with _$FriendFeedEvent {
  const factory FriendFeedEvent.refreshFeed() = _RefreshFeed;
  const factory FriendFeedEvent.getProfiles(List<ForumPost> posts) =
      _GetProfiles;
  const factory FriendFeedEvent.liked(List<ForumPost> forums,
      List<Profile> profiles, int index, String userId) = _Liked;
  const factory FriendFeedEvent.unliked(List<ForumPost> forums,
      List<Profile> profiles, int index, String userId) = _Unliked;
  const factory FriendFeedEvent.retrieveMorePosts(
      List<ForumPost> oldPosts, List<Profile> oldProfiles) = _RetrieveMorePosts;
  const factory FriendFeedEvent.retrieveMoreProfiles(
      List<ForumPost> newPosts,
      List<ForumPost> updatedPosts,
      List<Profile> oldProfiles) = _RetrieveMoreProfiles;
}
