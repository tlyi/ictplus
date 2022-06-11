import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/presentation/forum/forum_page/widgets/comment_form.dart';

class CommentPage extends StatelessWidget {
  final ForumPost forum;
  const CommentPage({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ForumActorBloc>()..add(const ForumActorEvent.started()),
      child: DismissKeyboard(
        child: Scaffold(
            appBar: appBar(
                context: context,
                header: 'Add Comment',
                canClose: true,
                notifications: false),
            bottomNavigationBar: const NavigationBar(),
            body: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                    child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).padding.top + kToolbarHeight),
                  ),
                  child: CommentForm(forum: forum),
                )))),
      ),
    );
  }
}
