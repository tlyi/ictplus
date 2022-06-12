import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/comment_watcher/comment_watcher_bloc.dart';
import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/application/forum/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:ictplus/application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart';
import 'package:ictplus/domain/data/forum/comment/comment.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/forum/poll/poll.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:polls/polls.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class ForumBody extends StatelessWidget {
  const ForumBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumPostWatcherBloc, ForumPostWatcherState>(
        listener: (context, state) {
      state.maybeMap(
          loadFailure: (state) => FlushbarHelper.createError(
                message: state.dataFailure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'),
              ).show(context),
          orElse: () {});
    }, builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        loadSuccess: (state) {
          ForumPost forum = state.forum;
          Profile posterProfile = state.posterProfile;
          String header;
          if (forum.isAnon) {
            header = 'Posted by anonymous';
          } else {
            header = 'Posted by ${posterProfile.username.getOrCrash()}';
          }
          return BlocBuilder<ForumActorBloc, ForumActorState>(
            builder: (context, state) {
              final ownId = context.read<ForumActorBloc>().state.userId;
              return Scaffold(
                  appBar: AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.grey),
                        onPressed: () {
                          context.popRoute();
                        },
                      ),
                      title: GestureDetector(
                        onTap: () {
                          if (!forum.isAnon) {
                            ownId == forum.posterUserId
                                ? context
                                    .pushRoute(ProfileRoute(canGoBack: true))
                                : context.pushRoute(OtherProfileRoute(
                                    userProfile: posterProfile));
                          }
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              header,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              getTimeForum(forum.timestamp),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        GestureDetector(
                          onTap: () async {
                            if (!forum.isAnon) {
                              ownId == forum.posterUserId
                                  ? context
                                      .pushRoute(ProfileRoute(canGoBack: true))
                                  : context.pushRoute(OtherProfileRoute(
                                      userProfile: posterProfile));
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 46,
                            height: 46,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: ClipOval(
                              child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  height: 46,
                                  width: 46,
                                  imageUrl: posterProfile.photoUrl,
                                  placeholder: (context, url) => const Center(
                                      child: CircularProgressIndicator())),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ]),
                  bottomNavigationBar: const NavigationBar(),
                  body: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        _BuildPost(forum: forum, userId: ownId),
                        Row(children: <Widget>[
                          Expanded(
                            child: _BuildCommentButton(forum: forum),
                          ),
                          _BuildSortCommentsOption(forumId: forum.forumId),
                        ]),
                        _BuildComments(forum: forum),
                      ],
                    ),
                  ));
            },
          );
        },
        loadFailure: (state) {
          return Container();
        },
      );
    });
  }
}

class _BuildPost extends StatelessWidget {
  final ForumPost forum;
  final String userId;
  const _BuildPost({Key? key, required this.forum, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF7BA5BB)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(children: <Widget>[
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 15),
                      Text(forum.title.getOrCrash(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                      if (forum.body.getOrCrash() != '')
                        const SizedBox(height: 15),
                      Text(forum.body.getOrCrash(),
                          style: const TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Stack(
                      children: [
                        TapDebouncer(
                            cooldown: const Duration(milliseconds: 800),
                            onTap: () async {
                              if (forum.likedUserIds.contains(userId)) {
                                context.read<ForumActorBloc>().add(
                                    ForumActorEvent.forumUnliked(
                                        forum.forumId));
                              } else {
                                context
                                    .read<ForumActorBloc>()
                                    .add(ForumActorEvent.forumLiked(forum));
                              }
                            },
                            builder: (BuildContext context,
                                TapDebouncerFunc? onTap) {
                              return IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: onTap,
                                icon: Icon(
                                  Icons.arrow_drop_up,
                                  color: forum.likedUserIds.contains(userId)
                                      ? Colors.grey[800]
                                      : Colors.grey[400],
                                  size: 35,
                                ),
                              );
                            }),
                        if (forum.likes < 10)
                          Positioned(
                              left: 20,
                              bottom: -1,
                              child: Text(forum.likes.toString()))
                        else
                          Positioned(
                              left: 16,
                              bottom: -1,
                              child: Text(forum.likes.toString())),
                      ],
                    ),
                  ],
                ),
              ]),
              if (forum.photoAdded || forum.pollAdded)
                const SizedBox(height: 20),
              if (forum.photoAdded) _BuildPhoto(photoUrl: forum.photoUrl),
              if (forum.pollAdded) _BuildPoll(forumId: forum.forumId),
              Row(
                children: [
                  _BuildTag(forumTag: forum.tag),
                  _BuildDeleteButton(forum: forum),
                ],
              ),
            ],
          ),
        ));
  }
}

class _BuildPhoto extends StatelessWidget {
  final String photoUrl;
  const _BuildPhoto({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            context.pushRoute(
                FullScreenPhotoRoute(photoUrl: photoUrl, tag: "forumPhoto"));
          },
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Hero(
                  tag: "forumPhoto",
                  child: CachedNetworkImage(
                    imageUrl: photoUrl,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                  ))),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _BuildPoll extends StatelessWidget {
  final String forumId;
  const _BuildPoll({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PollWatcherBloc, PollWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadFailure: (state) => FlushbarHelper.createError(
                  message: state.dataFailure.map(
                      unexpected: (_) => 'Unexpected error',
                      insufficientPermission: (_) => 'Insufficient permission',
                      unableToUpdate: (_) => 'Unable to update'),
                ).show(context),
            orElse: () {});
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            Poll poll = state.poll;
            int votes = poll.voteList.reduce((a, b) => a + b).toInt();
            return Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.80,
              child: Column(
                children: <Widget>[
                  Polls(
                    children: [
                      for (int i = 0; i < poll.numOptions; i++)
                        Polls.options(
                            title: poll.optionList[i].getOrCrash(),
                            value: poll.voteList[i])
                    ],
                    question: Text('Question: ${poll.title.getOrCrash()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    voteData: poll.usersWhoVoted,
                    currentUser: context.read<ForumActorBloc>().state.userId,
                    creatorID: poll.creatorUuid,
                    allowCreatorVote: true,
                    outlineColor: const Color(0xFFC8C8C8),
                    onVoteBackgroundColor: const Color(0xFF97b8c9),
                    leadingBackgroundColor: const Color(0xFF7BA5BB),
                    backgroundColor: Colors.white,
                    onVote: (choice) {
                      //choice enums starts from 1
                      context
                          .read<ForumActorBloc>()
                          .add(ForumActorEvent.voted(forumId, choice - 1));
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 4),
                      child: Text(votes == 1 ? '$votes vote' : '$votes votes'),
                    ),
                  ),
                ],
              ),
            );
          },
          loadFailure: (state) {
            return Container();
          },
        );
      },
    );
  }
}

class _BuildCommentButton extends StatelessWidget {
  final ForumPost forum;
  const _BuildCommentButton({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(const Color(0xFF7BA5BB))),
        onPressed: () => context.pushRoute(CommentRoute(forum: forum)),
        child: const Text('Add Comment'),
      ),
    );
  }
}

class _BuildTag extends StatelessWidget {
  final String forumTag;
  const _BuildTag({Key? key, required this.forumTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.topLeft,
        child: ActionChip(
            onPressed: () {
              context.pushRoute(ModuleForumRoute(moduleCode: forumTag));
            },
            label: Text(forumTag)),
      ),
    );
  }
}

class _BuildDeleteButton extends StatelessWidget {
  final ForumPost forum;
  const _BuildDeleteButton({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<ForumActorBloc>().state.userId == forum.posterUserId) {
      return Container(
        alignment: Alignment.topRight,
        child: IconButton(
            color: Colors.red[300],
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext innerContext) => AlertDialog(
                      title: const Text('Delete Forum?'),
                      content: const Text(
                          'Press OK to delete the forum permanently.'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => Navigator.pop(innerContext),
                            child: const Text('Cancel')),
                        TextButton(
                            onPressed: () {
                              context
                                  .read<ForumActorBloc>()
                                  .add(ForumActorEvent.forumDeleted(forum));
                              Navigator.pop(innerContext);
                              context.popRoute();
                            },
                            child: const Text('OK'))
                      ],
                    )),
            icon: const Icon(Icons.delete),
            tooltip: 'Delete Forum'),
      );
    } else {
      return Container();
    }
  }
}

class _BuildSortCommentsOption extends StatefulWidget {
  final String forumId;
  const _BuildSortCommentsOption({Key? key, required this.forumId})
      : super(key: key);

  @override
  __BuildSortCommentsOptionState createState() =>
      __BuildSortCommentsOptionState();
}

class __BuildSortCommentsOptionState extends State<_BuildSortCommentsOption> {
  String selected = 'Recent';
  @override
  Widget build(BuildContext context) {
    final List<String> sortingOptions = ['Recent', 'Oldest', 'Most Liked'];
    return Row(
      children: <Widget>[
        const Text('Sort Comments by'),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: selected,
          items: sortingOptions.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selected = newValue!;
            });
            context.read<CommentWatcherBloc>().add(
                CommentWatcherEvent.retrieveCommentsStarted(
                    widget.forumId, newValue!));
          },
        ),
      ],
    );
  }
}

class _BuildComments extends StatelessWidget {
  final ForumPost forum;
  const _BuildComments({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ownId = context.read<ForumActorBloc>().state.userId;
    return BlocConsumer<CommentWatcherBloc, CommentWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadFailure: (state) => FlushbarHelper.createError(
                  message: state.dataFailure.map(
                      unexpected: (_) => 'Unexpected error',
                      insufficientPermission: (_) => 'Insufficient permission',
                      unableToUpdate: (_) => 'Unable to update'),
                ).show(context),
            orElse: () {});
      },
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return ListView.builder(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.comments.length,
                  itemBuilder: (context, index) {
                    final Comment comment = state.comments[index];
                    final Profile profile = state.profileList[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 10, bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.7,
                              color: Color(0xFFC8C8C8),
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      if (!comment.isAnon) {
                                        ownId == comment.userId
                                            ? context.pushRoute(
                                                ProfileRoute(canGoBack: true))
                                            : context.pushRoute(
                                                OtherProfileRoute(
                                                    userProfile: profile));
                                      }
                                    },
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          NetworkImage(profile.photoUrl),
                                      backgroundColor: Colors.white,
                                    )),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 2),
                                      GestureDetector(
                                          onTap: () {
                                            if (!comment.isAnon) {
                                              ownId == comment.userId
                                                  ? context.pushRoute(
                                                      ProfileRoute(
                                                          canGoBack: true))
                                                  : context.pushRoute(
                                                      OtherProfileRoute(
                                                          userProfile:
                                                              profile));
                                            }
                                          },
                                          child: Text(
                                              comment.isAnon
                                                  ? 'Anonymous'
                                                  : '@${profile.username.getOrCrash()}',
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.w600))),
                                      const SizedBox(height: 2),
                                      Text(getTime(comment.timestamp)),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        TapDebouncer(
                                            cooldown: const Duration(
                                                milliseconds: 800),
                                            onTap: () async {
                                              if (comment.likedUserIds
                                                  .contains(ownId)) {
                                                context
                                                    .read<ForumActorBloc>()
                                                    .add(ForumActorEvent
                                                        .commentUnliked(
                                                            comment.forumId,
                                                            comment.commentId));
                                              } else {
                                                context
                                                    .read<ForumActorBloc>()
                                                    .add(ForumActorEvent
                                                        .commentLiked(
                                                            forum, comment));
                                              }
                                            },
                                            builder: (BuildContext context,
                                                TapDebouncerFunc? onTap) {
                                              return IconButton(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                onPressed: onTap,
                                                icon: Icon(
                                                  Icons.arrow_drop_up,
                                                  color: comment.likedUserIds
                                                          .contains(ownId)
                                                      ? Colors.grey[800]
                                                      : Colors.grey[400],
                                                  size: 35,
                                                ),
                                              );
                                            }),
                                        if (comment.likes < 10)
                                          Positioned(
                                              left: 20,
                                              bottom: -1,
                                              child: Text(
                                                  comment.likes.toString()))
                                        else
                                          Positioned(
                                              left: 16,
                                              bottom: -1,
                                              child: Text(
                                                  comment.likes.toString())),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(comment.commentText.getOrCrash(),
                                  style: const TextStyle(fontSize: 16)),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                    );
                  });
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}
