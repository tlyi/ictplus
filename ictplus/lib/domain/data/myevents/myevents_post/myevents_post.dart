import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';
import 'package:ictplus/domain/data/myevents/myevents_post/myevents_fp.dart';
import 'package:ictplus/domain/core/value_objects.dart';

part 'myevents_post.freezed.dart';

@freezed
abstract class EventPost implements _$EventPost {
  const EventPost._();

  const factory EventPost({
    required String eventId,
    required Title title,
    required EventLocation location,
    required EventDate date,
    //required TODO: picture?
    required List<String> forcePrepItems,
  }) = _EventPost;

  factory EventPost.empty() => EventPost(
        eventId: UniqueId().getOrCrash(),
        title: Title(''),
        location: EventLocation(''),
        date: EventDate(''),
        forcePrepItems: [],
      );
}
