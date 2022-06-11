import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/forum/poll/poll.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';

part 'poll_dtos.freezed.dart';
part 'poll_dtos.g.dart';

@freezed
abstract class PollDto implements _$PollDto {
  const PollDto._();

  const factory PollDto({
    required int numOptions,
    required String creatorUuid,
    required String title,
    required List<String> optionList,
    required List<double> voteList,
    required Map<String, int> usersWhoVoted,
  }) = _PollDto;

  factory PollDto.fromDomain(Poll poll) {
    return PollDto(
      numOptions: poll.numOptions,
      creatorUuid: poll.creatorUuid,
      title: poll.title.getOrCrash(),
      optionList: poll.optionList.map((value) => value.getOrCrash()).toList(),
      voteList: poll.voteList,
      usersWhoVoted: poll.usersWhoVoted,
    );
  }

  Poll toDomain() {
    return Poll(
      numOptions: numOptions,
      creatorUuid: creatorUuid,
      title: Title(title),
      optionList: optionList.map((value) => PollOption(value)).toList(),
      voteList: voteList,
      usersWhoVoted: usersWhoVoted,
    );
  }

  factory PollDto.fromJson(Map<String, dynamic> json) =>
      _$PollDtoFromJson(json);

  factory PollDto.fromFirestore(DocumentSnapshot doc) {
    return PollDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
