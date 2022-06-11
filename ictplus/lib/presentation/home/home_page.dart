import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ictplus/application/feed/friend_feed/friend_feed_bloc.dart';
import 'package:ictplus/application/feed/module_feed/module_feed_bloc.dart';

import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/presentation/home/widgets/friend_feed.dart';
import 'package:ictplus/presentation/home/widgets/module_feed.dart';

import 'package:ictplus/domain/core/constants.dart' as constants;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ForumActorBloc>()..add(const ForumActorEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ModuleFeedBloc>()..add(const ModuleFeedEvent.refreshFeed()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<FriendFeedBloc>()..add(const FriendFeedEvent.refreshFeed()),
        )
      ],
      child: Scaffold(
        appBar: appBar(context: context, header: 'FriendliNUS'),
        bottomNavigationBar: const NavigationBar(),
        body: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Expanded(child: HomeFeedView()),
        ]),
      ),
    );
  }
}

class HomeFeedView extends StatefulWidget {
  @override
  _HomeFeedViewState createState() => _HomeFeedViewState();
}

class _HomeFeedViewState extends State<HomeFeedView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
            controller: _tabController,
            indicatorColor: constants.THEME_BLUE,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tooltip(
                  message: "See posts from modules you follow",
                  child: Tab(icon: Icon(Icons.library_books))),
              Tooltip(
                  message: "See posts from people you follow",
                  child: Tab(icon: Icon(Icons.people_rounded))),
            ]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ClipRRect(child: ModuleFeed()),
              ClipRRect(child: FriendFeed()),
            ],
          ),
        ),
      ],
    );
  }
}
