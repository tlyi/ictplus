import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/myevents/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/application/myevents/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:ictplus/application/myevents/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:ictplus/domain/data/myevents/forum_post/forum_post.dart';
import 'package:ictplus/domain/data/myevents/poll/poll.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:polls/polls.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tap_debouncer/tap_debouncer.dart';
import 'package:ictplus/presentation/core/app_bar.dart';

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
          backgroundColor: Colors.black,
          body: Center(
            child: CircularProgressIndicator(color: constants.THEME_ORANGE),
          ),
        ),
        loadSuccess: (state) {
          ForumPost forum = state.forum;
          String header;
          return BlocBuilder<MyEventsActorBloc, ForumActorState>(
            builder: (context, state) {
              final ownId = context.read<MyEventsActorBloc>().state.userId;
              return Scaffold(
                  backgroundColor: Colors.black,
                  appBar: appBar(
                      context: context,
                      header: "",
                      showLogo: true,
                      canGoBack: true),
                  bottomNavigationBar: const NavigationBar(),
                  body: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        _BuildPost(forum: forum, userId: ownId),
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
      padding: const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(forum.title,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            fontSize: 50,
                            color: constants.THEME_GREEN)),
                    Text(forum.status,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: constants.THEME_ORANGE))
                  ],
                ),
                Text(forum.start_date + ' - ' + forum.end_date,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white)),
                const SizedBox(height: 20),
                Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: constants.THEME_TRANSLUCENT_GRAY,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: const Text('Reporting Time',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white))),
                  Text(
                    forum.report_time,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: constants.THEME_TRANSLUCENT_GRAY,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: const Text('Location',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white))),
                  Text(
                    forum.location,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: constants.THEME_TRANSLUCENT_GRAY,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: const Text('Force Prep',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white))),
                  const SizedBox(height: 10),
                  _BuildPhoto(photoUrl: forum.photoUrl),
                  _BuildList(title: 'Pack 1', list: forum.pack1),
                  _BuildList(title: 'Pack 2', list: forum.pack2),
                  _BuildList(title: 'Pack 3', list: forum.pack3),
                  _BuildList(title: 'Pack 4', list: forum.pack4),
                  _BuildList(title: 'Pack 5', list: forum.pack5),
                  _BuildList(title: 'Separate Items', list: forum.specialPack),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                constants.THEME_ORANGE),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                        onPressed: () {
                          context.pushRoute(const SingPassRoute());
                        },
                        child: const Text("Submit ForcePrep Image",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white))),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                constants.THEME_DARK_GREEN),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                        onPressed: () {
                          context.pushRoute(
                              MissingItemsRoute(forumId: forum.eventId));
                        },
                        child: const Text("Report Missing Items",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white))),
                  )
                ]),
                // _BuildPoll(forumId: forum.eventId),
              ],
            ),
          ]),
    );
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
              width: MediaQuery.of(context).size.width * 0.8,
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
                    currentUser: context.read<MyEventsActorBloc>().state.userId,
                    creatorID: poll.creatorUuid,
                    allowCreatorVote: true,
                    outlineColor: const Color(0xFFC8C8C8),
                    onVoteBackgroundColor: const Color(0xFF97b8c9),
                    leadingBackgroundColor: const Color(0xFF7BA5BB),
                    backgroundColor: Colors.white,
                    onVote: (choice) {
                      //choice enums starts from 1
                      context
                          .read<MyEventsActorBloc>()
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

class _BuildList extends StatelessWidget {
  final String title;
  final List<String> list;
  const _BuildList({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: constants.THEME_ORANGE))),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final String item = list[index];
                    return Container(
                        margin: EdgeInsets.symmetric(vertical: 3),
                        child: Text(item,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.white)));
                  })
            ]));
  }
}
