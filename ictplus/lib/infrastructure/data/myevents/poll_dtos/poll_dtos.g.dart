// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollDto _$_$_PollDtoFromJson(Map<String, dynamic> json) {
  return _$_PollDto(
    numOptions: json['numOptions'] as int,
    creatorUuid: json['creatorUuid'] as String,
    title: json['title'] as String,
    optionList:
        (json['optionList'] as List<dynamic>).map((e) => e as String).toList(),
    voteList: (json['voteList'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
    usersWhoVoted: Map<String, int>.from(json['usersWhoVoted'] as Map),
  );
}

Map<String, dynamic> _$_$_PollDtoToJson(_$_PollDto instance) =>
    <String, dynamic>{
      'numOptions': instance.numOptions,
      'creatorUuid': instance.creatorUuid,
      'title': instance.title,
      'optionList': instance.optionList,
      'voteList': instance.voteList,
      'usersWhoVoted': instance.usersWhoVoted,
    };
