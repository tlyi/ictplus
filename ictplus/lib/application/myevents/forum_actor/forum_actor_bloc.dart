import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/myevents/comment/comment.dart';
import 'package:ictplus/domain/data/myevents/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/myevents/i_forum_repository.dart';
import 'package:ictplus/domain/data/myevents/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'forum_actor_event.dart';
part 'forum_actor_state.dart';
part 'forum_actor_bloc.freezed.dart';

@injectable
class MyEventsActorBloc extends Bloc<ForumActorEvent, ForumActorState> {
  final IForumRepository _forumRepository;
  MyEventsActorBloc(this._forumRepository) : super(ForumActorState.initial());

  @override
  Stream<ForumActorState> mapEventToState(
    ForumActorEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final userId = await _forumRepository.getOwnId();
        yield state.copyWith(
          userId: userId,
        );
      },
      voted: (e) async* {
        await _forumRepository.vote(e.forumId, e.index, state.userId);
      },
    );
  }
}
