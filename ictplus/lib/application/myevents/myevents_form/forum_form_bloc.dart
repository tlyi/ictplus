import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:ictplus/domain/data/forum/poll/poll.dart';
import 'package:ictplus/domain/data/forum/value_objects.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:injectable/injectable.dart';

part 'forum_form_event.dart';
part 'forum_form_state.dart';
part 'forum_form_bloc.freezed.dart';

@injectable
class ForumFormBloc extends Bloc<ForumFormEvent, ForumFormState> {
  final IForumRepository _forumRepository;
  final IProfileRepository _profileRepository;

  ForumFormBloc(this._forumRepository, this._profileRepository)
      : super(ForumFormState.initial());

  @override
  Stream<ForumFormState> mapEventToState(
    ForumFormEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          title: Title(e.titleStr),
        ));
      },
      searchedModule: (e) async* {
        final moduleSuggestions =
            await _profileRepository.searchModulesByModuleCode(e.searchStr);

        yield state.copyWith(
          moduleSuggestions: moduleSuggestions,
        );
      },
      tagChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          tag: e.tagStr,
        ));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          body: Body(e.bodyStr),
        ));
      },
      anonStateChanged: (e) async* {
        if (state.forumPost.isAnon) {
          yield state.copyWith(
              forumPost: state.forumPost.copyWith(isAnon: false));
        } else {
          yield state.copyWith(
              forumPost: state.forumPost.copyWith(isAnon: true));
        }
      },
      photoChanged: (e) async* {
        yield state.copyWith(
          photoFile: e.photo,
          forumPost: state.forumPost.copyWith(
            photoAdded: true,
            pollAdded: false,
          ),
        );
      },
      photoAdded: (e) async* {
        final failureOrString = await _forumRepository.uploadPhoto(
            state.photoFile, state.forumPost.forumId);
        String url = '';
        failureOrString.fold(
          (f) {
            url = constants.ERROR_DP;
            print(f);
          },
          (s) {
            url = s;
          },
        );
        yield state.copyWith(
            photoUrl: failureOrString,
            forumPost: state.forumPost.copyWith(
              photoUrl: url,
              photoAdded: true,
              pollAdded: false,
            ));
        add(const ForumFormEvent.createdPost());
      },
      pollAdded: (e) async* {
        yield state.copyWith(
            photoFile: File(''),
            forumPost: state.forumPost.copyWith(
              pollAdded: true,
              photoAdded: false,
            ));
      },
      pollNumOptionsChanged: (e) async* {
        yield state.copyWith(
            poll: state.poll.copyWith(
          numOptions: e.numOptions,
          optionList: List.filled(e.numOptions, PollOption('')),
          voteList: List.filled(e.numOptions, 0),
        ));
      },
      pollTitleChanged: (e) async* {
        yield state.copyWith(
            poll: state.poll.copyWith(title: Title(e.pollTitleStr)));
      },
      pollOptionChanged: (e) async* {
        List<PollOption> currOptionList = List.from(state.poll.optionList);
        currOptionList[e.index] = PollOption(e.optionStr);
        yield state.copyWith(
            poll: state.poll.copyWith(optionList: currOptionList));
      },
      photoRemoved: (e) async* {
        yield state.copyWith(
            photoFile: File(''),
            forumPost: state.forumPost.copyWith(photoAdded: false));
      },
      pollRemoved: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(pollAdded: false));
      },
      createdPost: (e) async* {
        Either<DataFailure, Unit>? failureOrSuccess;
        Either<DataFailure, Unit>? pollFailureOrSuccess;

        final bool isTitleValid = state.forumPost.title.isValid();
        final bool isBodyValid = state.forumPost.body.isValid();
        final bool isForumPostValid = isTitleValid && isBodyValid;

        if (isForumPostValid) {
          final String userId = await _forumRepository.getOwnId();
          if (state.forumPost.tag == '') {
            yield state.copyWith(
                forumPost: state.forumPost.copyWith(tag: 'General'));
          }
          yield state.copyWith(
              isLoading: true,
              createFailureOrSuccessOption: none(),
              createPollFailureOrSuccessOption: none(),
              forumPost: state.forumPost.copyWith(
                posterUserId: userId,
              ),
              poll: state.poll.copyWith(creatorUuid: userId));

          if (state.forumPost.pollAdded) {
            final bool arePollOptionsValid = state.poll.optionList
                .map((pollOption) => pollOption.isValid())
                .reduce((a, b) => a & b);
            if (arePollOptionsValid) {
              pollFailureOrSuccess = await _forumRepository.createPoll(
                  state.poll.copyWith(creatorUuid: userId),
                  state.forumPost.forumId);

              failureOrSuccess = await _forumRepository.create(
                  state.forumPost.copyWith(posterUserId: userId),
                  state.forumPost.forumId);
            }
            yield state.copyWith(
                createPollFailureOrSuccessOption:
                    optionOf(pollFailureOrSuccess));
          } else {
            failureOrSuccess = await _forumRepository.create(
                state.forumPost.copyWith(posterUserId: userId),
                state.forumPost.forumId);
          }
        }

        yield state.copyWith(
          isLoading: false,
          showErrorMessages: true,
          createFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
