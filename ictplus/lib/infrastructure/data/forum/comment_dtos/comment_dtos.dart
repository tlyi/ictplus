import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/forum/comment/comment.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'comment_dtos.freezed.dart';
part 'comment_dtos.g.dart';

@freezed
abstract class CommentDto implements _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    required String forumId,
    required String commentId,
    required String userId,
    required String commentText,
    required bool isAnon,
    required int likes,
    required List<String> likedUserIds,
    required String timestamp,
  }) = _CommentDto;

  factory CommentDto.fromDomain(Comment comment) {
    return CommentDto(
      forumId: comment.forumId,
      commentId: comment.commentId,
      userId: comment.userId,
      commentText: comment.commentText.getOrCrash(),
      isAnon: comment.isAnon,
      likes: comment.likes,
      likedUserIds: comment.likedUserIds,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
    );
  }

  Comment toDomain() {
    return Comment(
        forumId: forumId,
        commentId: commentId,
        userId: userId,
        commentText: CommentText(commentText),
        isAnon: isAnon,
        likes: likes,
        likedUserIds: likedUserIds,
        timestamp: timestamp);
  }

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);

  factory CommentDto.fromFirestore(DocumentSnapshot doc) {
    return CommentDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
