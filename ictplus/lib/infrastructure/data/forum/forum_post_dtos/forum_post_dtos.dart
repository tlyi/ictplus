import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/keyword_generator.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'forum_post_dtos.freezed.dart';
part 'forum_post_dtos.g.dart';

@freezed
abstract class ForumPostDto implements _$ForumPostDto {
  const ForumPostDto._();

  const factory ForumPostDto({
    required String forumId,
    required String title,
    required String tag,
    required String body,
    required int likes,
    required List<String> likedUserIds,
    required String posterUserId,
    required bool isAnon,
    required String photoUrl,
    required bool photoAdded,
    required bool pollAdded,
    required String timestamp,
    required List<String> keywords,
  }) = _ForumPostDto;

  factory ForumPostDto.fromDomain(ForumPost forumPost) {
    List<String> keywords =
        generateKeywords(forumPost.title.getOrCrash().toLowerCase());
    keywords.add(forumPost.tag.toLowerCase());
    return ForumPostDto(
      forumId: forumPost.forumId,
      title: forumPost.title.getOrCrash(),
      tag: forumPost.tag,
      body: forumPost.body.getOrCrash(),
      likes: forumPost.likes,
      likedUserIds: forumPost.likedUserIds,
      posterUserId: forumPost.posterUserId,
      isAnon: forumPost.isAnon,
      photoUrl: forumPost.photoUrl,
      photoAdded: forumPost.photoAdded,
      pollAdded: forumPost.pollAdded,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      keywords: keywords,
    );
  }

  ForumPost toDomain() {
    return ForumPost(
      forumId: forumId,
      title: Title(title),
      tag: tag,
      body: Body(body),
      likes: likes,
      likedUserIds: likedUserIds,
      posterUserId: posterUserId,
      isAnon: isAnon,
      photoUrl: photoUrl,
      photoAdded: photoAdded,
      pollAdded: pollAdded,
      timestamp: timestamp,
    );
  }

  factory ForumPostDto.fromJson(Map<String, dynamic> json) =>
      _$ForumPostDtoFromJson(json);

  factory ForumPostDto.fromFirestore(DocumentSnapshot doc) {
    return ForumPostDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
