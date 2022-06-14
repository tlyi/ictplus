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

class MissingItemBody extends StatefulWidget {
  const MissingItemBody({Key? key}) : super(key: key);

  @override
  _MissingItemBodyState createState() => _MissingItemBodyState();
}

class _MissingItemBodyState extends State<MissingItemBody> {
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
                  body: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        BuildPost(forum: forum, userId: ownId),
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

class BuildPost extends StatefulWidget {
  final ForumPost forum;
  final String userId;
  const BuildPost({Key? key, required this.forum, required this.userId})
      : super(key: key);

  @override
  _BuildPost createState() => _BuildPost();
}

class _BuildPost extends State<BuildPost> {
  final String RESTRICTED_TEXT =
      "The restricted equipments will be submitted to RQ for purchase. Non-restricted items please head to emart and get it after submitting this list.";

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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.forum.title,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 50,
                                color: constants.THEME_GREEN)),
                        Text(widget.forum.status,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: constants.THEME_ORANGE))
                      ],
                    ),
                    Text(
                        widget.forum.start_date + ' - ' + widget.forum.end_date,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                    const SizedBox(height: 20),
                    Text(RESTRICTED_TEXT,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Colors.white)),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            color: constants.THEME_TRANSLUCENT_ORANGE,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13.0))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: const Text('Search an item',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Color(0x66FFFFFF)))),
                              const Icon(
                                Icons.search,
                                color: Color(0x66FFFFFF),
                                size: 17.0,
                              )
                            ])),
                    BuildList(title: 'Pack 1', list: widget.forum.pack1),
                    BuildList(title: 'Pack 2', list: widget.forum.pack2),
                    BuildList(title: 'Pack 3', list: widget.forum.pack3),
                    BuildList(title: 'Pack 4', list: widget.forum.pack4),
                    BuildList(title: 'Pack 5', list: widget.forum.pack5),
                    BuildList(title: 'Pack 6', list: widget.forum.pack6),
                    BuildList(title: 'Pack 7', list: widget.forum.pack7),
                    BuildList(title: 'Pack 8', list: widget.forum.pack8),
                    BuildList(title: 'Pack 9', list: widget.forum.pack9),
                    BuildList(
                        title: 'Separate Items',
                        list: widget.forum.specialPack),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  constants.THEME_DARK_GREEN),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ))),
                          onPressed: () {
                            context.pushRoute(const SingPassRoute());
                          },
                          child: const Text("Report Missing Items",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white))),
                    ),
                  ],
                )
              ]),
          // _BuildPoll(forumId: forum.eventId),
        ],
      ),
    );
  }
}

class BuildList extends StatefulWidget {
  final String title;
  final List<String> list;

  BuildList({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);

  @override
  _BuildList createState() => _BuildList();
}

class _BuildList extends State<BuildList> {
  // late final List<CheckModel> _items;
  late final List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.list.length, false);
    // _items = List<CheckModel>.filled(widget.list.length, CheckModel("", false));
    // for (int i = 0; i < widget.list.length; i++) {
    //   _items[i] = CheckModel(widget.list[i], false);
    // }
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return constants.THEME_TRANSLUCENT_GRAY;
      }
      return Colors.white;
    }

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(widget.title,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Color(0xFF545E4C)))),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    final String item = widget.list[index];
                    return widget.title == 'Separate Items'
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 3),
                                      child: Text(item,
                                          style: const TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color: Colors.white)))),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[index],
                                visualDensity: VisualDensity(
                                    horizontal: -4.0, vertical: -4.0),
                                onChanged: (bool? newValue) {
                                  setState(
                                    () {
                                      _isChecked[index] = newValue!;
                                    },
                                  );
                                },
                              )
                            ],
                          )
                        : index == 0
                            ? Container(
                                margin: const EdgeInsets.symmetric(vertical: 3),
                                child: Text(item,
                                    style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Colors.white)))
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 3),
                                          child: Text(item,
                                              style: const TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Colors.white)))),
                                  Checkbox(
                                    checkColor: Colors.white,
                                    shape: CircleBorder(),
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: _isChecked[index],
                                    visualDensity: VisualDensity(
                                        horizontal: -4.0, vertical: -4.0),
                                    onChanged: (bool? newValue) {
                                      setState(
                                        () {
                                          _isChecked[index] = newValue!;
                                        },
                                      );
                                    },
                                  )
                                ],
                              );
                  })
            ]));
  }
}
