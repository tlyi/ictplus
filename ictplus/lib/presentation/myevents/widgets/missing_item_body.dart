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

class MissingItemBody extends StatelessWidget {
  const MissingItemBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
            context: context, header: "", showLogo: true, canGoBack: true),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Text("hi", style: TextStyle(color: Colors.white)),
        ));
  }
}
