import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:auto_route/auto_route.dart';

class CommentForm extends StatelessWidget {
  final ForumPost forum;
  const CommentForm({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumActorBloc, ForumActorState>(
      listener: (context, state) {
        state.createFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            FlushbarHelper.createError(
                message: failure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'));
          }, (_) => context.popRoute()),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  _BuildCommentField(),
                  Row(
                    children: <Widget>[
                      _BuildAnonymousSwitch(),
                      const Text('Post Anonymously'),
                    ],
                  ),
                  _BuildPostCommentButton(
                    forum: forum,
                  ),
                ],
              ),
            ));
      },
    );
  }
}

class _BuildCommentField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Write a Comment',
      ),
      autocorrect: false,
      onChanged: (value) => context
          .read<ForumActorBloc>()
          .add(ForumActorEvent.commentChanged(value)),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) => context
          .read<ForumActorBloc>()
          .state
          .comment
          .commentText
          .value
          .fold(
              (f) => f.maybeMap(
                  emptyString: (_) => 'Comment cannot be empty',
                  exceedingLength: (_) =>
                      'Comment too long, maximum of 100 characters only',
                  orElse: () => null),
              (_) => null),
    );
  }
}

class _BuildAnonymousSwitch extends StatelessWidget {
  const _BuildAnonymousSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isAnon = context.read<ForumActorBloc>().state.comment.isAnon;
    return Switch(
        onChanged: (bool value) => context
            .read<ForumActorBloc>()
            .add(const ForumActorEvent.anonStateChanged()),
        value: isAnon);
  }
}

class _BuildPostCommentButton extends StatelessWidget {
  final ForumPost forum;
  const _BuildPostCommentButton({Key? key, required this.forum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(const Color(0xFF7BA5BB))),
        onPressed: () => context
            .read<ForumActorBloc>()
            .add(ForumActorEvent.commentCreated(forum)),
        child: const Text('Post Comment'),
      ),
    );
  }
}
