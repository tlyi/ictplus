import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment implements _$Comment {
  const Comment._();

  const factory Comment({
    required String forumId,
    required String commentId,
    required String userId,
    required String commentText,
    required bool isAnon,
    required int likes,
    required List<String> likedUserIds,
    required String timestamp,
  }) = _Comment;

  factory Comment.empty() => Comment(
        forumId: '',
        commentId: UniqueId().getOrCrash(),
        userId: '',
        commentText: '',
        isAnon: false,
        likes: 0,
        likedUserIds: [],
        timestamp: '',
      );
}
