import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/myevents/forum_post/forum_post.dart';
part 'forum_post_dtos.freezed.dart';
part 'forum_post_dtos.g.dart';

@freezed
abstract class ForumPostDto implements _$ForumPostDto {
  const ForumPostDto._();

  const factory ForumPostDto({
    required String title,
    required String eventId,
    required String end_date,
    required String start_date,
    required String report_time,
    required String location,
    required List<String> pack1,
    required List<String> pack2,
    required List<String> pack3,
    required List<String> pack4,
    required List<String> pack5,
    required List<String> specialPack,
    required String photoUrl,
    required String status,
  }) = _ForumPostDto;

  factory ForumPostDto.fromDomain(ForumPost forumPost) {
    return ForumPostDto(
      title: forumPost.title,
      eventId: forumPost.eventId,
      end_date: forumPost.end_date,
      start_date: forumPost.start_date,
      report_time: forumPost.report_time,
      location: forumPost.location,
      pack1: forumPost.pack1,
      pack2: forumPost.pack2,
      pack3: forumPost.pack3,
      pack4: forumPost.pack4,
      pack5: forumPost.pack5,
      specialPack: forumPost.specialPack,
      photoUrl: forumPost.photoUrl,
      status: forumPost.status,
    );
  }

  ForumPost toDomain() {
    return ForumPost(
      title: title,
      eventId: eventId,
      end_date: end_date,
      start_date: start_date,
      report_time: report_time,
      location: location,
      pack1: pack1,
      pack2: pack2,
      pack3: pack3,
      pack4: pack4,
      pack5: pack5,
      specialPack: specialPack,
      photoUrl: photoUrl,
      status: status,
    );
  }

  factory ForumPostDto.fromJson(Map<String, dynamic> json) =>
      _$ForumPostDtoFromJson(json);

  factory ForumPostDto.fromFirestore(DocumentSnapshot doc) {
    return ForumPostDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
