import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/search_location_chats/search_location_chats_bloc.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';

class BuildFloatingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      backdropColor: constants.THEME_LIGHT_BLUE,
      automaticallyImplyBackButton: false,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      progress: context.read<SearchLocationChatsBloc>().state.isSearching,
      elevation: 10,
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      hint: 'Search location chats by title...',
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          child: CircularButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        context
            .read<SearchLocationChatsBloc>()
            .add(SearchLocationChatsEvent.searchChanged(query));
      },
      builder: (BuildContext context, Animation<double> transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: _BuildSearchResults(),
        );
      },
    );
  }
}

class _BuildSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchLocationChatsBloc, SearchLocationChatsState>(
      builder: (context, state) {
        if (state.isSearching) {
          return Container();
        } else if (state.displayResults) {
          final searchResults = context
              .read<SearchLocationChatsBloc>()
              .state
              .searchResults
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return <LocationChat>[];
          });

          return FloatingSearchBarScrollNotifier(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final chat = searchResults[index];
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        top: 10, left: 14, right: 8, bottom: 5),
                    title: Text(chat.chatTitle.getOrCrash()),
                    subtitle: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Text(getTimeOrDate(chat.timestamp)),
                    onTap: () {
                      context.pushRoute(LocationConvoRoute(
                          convoId: chat.chatId,
                          title: chat.chatTitle.getOrCrash()));
                    },
                  ),
                );
              },
            ),
          );
        }

        return Container(color: Colors.white);
      },
    );
  }
}
