import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/comment_watcher/comment_watcher_bloc.dart';
import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/application/forum/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:ictplus/application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/forum/forum_page/widgets/forum_body.dart';

class ForumPage extends StatelessWidget {
  final String forumId;
  final bool pollAdded;
  const ForumPage({Key? key, required this.forumId, required this.pollAdded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => getIt<ForumPostWatcherBloc>()
            ..add(ForumPostWatcherEvent.retrieveForumPostStarted(forumId))),
      BlocProvider(
          create: (context) =>
              getIt<ForumActorBloc>()..add(const ForumActorEvent.started())),
      BlocProvider(
          create: (context) => getIt<CommentWatcherBloc>()
            ..add(CommentWatcherEvent.retrieveCommentsStarted(
                forumId, 'Recent'))),
      if (pollAdded)
        BlocProvider(
            create: (context) => getIt<PollWatcherBloc>()
              ..add(PollWatcherEvent.retrievePollStarted(forumId))),
    ], child: const ForumBody());
  }
}
