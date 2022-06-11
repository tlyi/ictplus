import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:ictplus/application/forum/search_forum/search_forum_bloc.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
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
      progress: context.read<SearchForumBloc>().state.isSearching,
      elevation: 10,
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      hint: 'Search forum by title...',
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
            .read<SearchForumBloc>()
            .add(SearchForumEvent.searchChanged(query));
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
    return BlocBuilder<SearchForumBloc, SearchForumState>(
      builder: (context, state) {
        if (state.isSearching) {
          return Container();
        } else if (state.displayResults) {
          final searchResults = context
              .read<SearchForumBloc>()
              .state
              .searchForumResults
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return <ForumPost>[];
          });

          return FloatingSearchBarScrollNotifier(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final forum = searchResults[index];
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        top: 10, left: 14, right: 8, bottom: 5),
                    title: Text(forum.title.getOrCrash()),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if (forum.body.getOrCrash() != '')
                            Text(
                              forum.body.getOrCrash(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          Chip(
                            label: Text(
                              forum.tag,
                              style: const TextStyle(fontSize: 10),
                            ),
                            labelPadding:
                                const EdgeInsets.only(left: 4, right: 4),
                          )
                        ]),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(getTime(forum.timestamp)),
                        if (forum.pollAdded)
                          Column(
                            children: <Widget>[
                              const SizedBox(height: 10),
                              Transform.rotate(
                                angle: 90 * pi / 180,
                                child: const Icon(
                                  Icons.poll_outlined,
                                  color: constants.THEME_BLUE,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                    isThreeLine: true,
                    onTap: () async {
                      await context.pushRoute(ForumRoute(
                          forumId: forum.forumId, pollAdded: forum.pollAdded));
                      context.read<ModuleWatcherBloc>().add(
                          const ModuleWatcherEvent.retrieveModulesStarted());
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
