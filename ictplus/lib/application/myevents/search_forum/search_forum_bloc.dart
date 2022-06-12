import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/i_forum_repository.dart';
import 'package:injectable/injectable.dart';

part 'search_forum_event.dart';
part 'search_forum_state.dart';
part 'search_forum_bloc.freezed.dart';

@injectable
class SearchForumBloc extends Bloc<SearchForumEvent, SearchForumState> {
  final IForumRepository _forumRepository;
  SearchForumBloc(this._forumRepository) : super(SearchForumState.initial());

  @override
  Stream<SearchForumState> mapEventToState(
    SearchForumEvent event,
  ) async* {
    yield* event.map(searchChanged: (e) async* {
      if (e.query == '') {
        yield state.copyWith(
          isSearching: false,
          searchForumResults: right([]),
          displayResults: false,
        );
      } else {
        yield state.copyWith(
          isSearching: true,
          displayResults: false,
        );
        final searchResults =
            await _forumRepository.searchForumByTitle(e.query);
        yield state.copyWith(
            isSearching: false,
            displayResults: true,
            searchForumResults: searchResults);
      }
    });
  }
}
