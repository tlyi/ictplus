import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:injectable/injectable.dart';

part 'search_location_chats_event.dart';
part 'search_location_chats_state.dart';
part 'search_location_chats_bloc.freezed.dart';

@injectable
class SearchLocationChatsBloc
    extends Bloc<SearchLocationChatsEvent, SearchLocationChatsState> {
  final IChatRepository _chatRepository;
  SearchLocationChatsBloc(this._chatRepository)
      : super(SearchLocationChatsState.initial());

  @override
  Stream<SearchLocationChatsState> mapEventToState(
    SearchLocationChatsEvent event,
  ) async* {
    yield* event.map(searchChanged: (e) async* {
      if (e.query == '') {
        yield state.copyWith(
          isSearching: false,
          searchResults: right([]),
          displayResults: false,
        );
      } else {
        yield state.copyWith(
          isSearching: true,
          displayResults: false,
        );
        final searchResults =
            await _chatRepository.searchLocationChatByTitle(e.query);
        yield state.copyWith(
            isSearching: false,
            displayResults: true,
            searchResults: searchResults);
      }
    });
  }
}
