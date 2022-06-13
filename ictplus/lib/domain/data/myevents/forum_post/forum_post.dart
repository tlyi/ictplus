import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/myevents/poll/poll.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';

part 'forum_post.freezed.dart';

@freezed
abstract class ForumPost implements _$ForumPost {
  const ForumPost._();

  const factory ForumPost({
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
  }) = _ForumPost;

  factory ForumPost.empty() => ForumPost(
        title: '',
        eventId: '',
        end_date: '',
        start_date: '',
        report_time: '',
        location: '',
        pack1: [],
        pack2: [],
        pack3: [],
        pack4: [],
        pack5: [],
        specialPack: [],
        photoUrl: '',
        status: '',
      );
}
