import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';

part 'poll.freezed.dart';

@freezed
abstract class Poll implements _$Poll {
  const Poll._();

  const factory Poll({
    required int numOptions,
    required String creatorUuid,
    required Title title,
    required List<PollOption> optionList,
    required List<double> voteList,
    required Map<String, int> usersWhoVoted, //Maps uuids to selected option
  }) = _Poll;

  factory Poll.empty() => Poll(
      numOptions: 0,
      creatorUuid: '',
      title: Title(''),
      optionList: [],
      voteList: [],
      usersWhoVoted: {});
}
