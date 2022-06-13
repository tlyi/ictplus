import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/myevents/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/application/myevents/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:ictplus/application/myevents/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/myevents/widgets/missing_item_body.dart';

class MissingItemsPage extends StatelessWidget {
  final String forumId;
  const MissingItemsPage({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => getIt<ForumPostWatcherBloc>()
            ..add(ForumPostWatcherEvent.retrieveForumPostStarted(forumId))),
      BlocProvider(
          create: (context) =>
              getIt<MyEventsActorBloc>()..add(const ForumActorEvent.started())),
      // if (pollAdded)
      //   BlocProvider(
      //       create: (context) => getIt<PollWatcherBloc>()
      //         ..add(PollWatcherEvent.retrievePollStarted(forumId))),
    ], child: const MissingItemBody());
  }
}
