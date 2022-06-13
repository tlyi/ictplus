import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context: context, header: 'Home', showLogo: false),
      bottomNavigationBar: const NavigationBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(":HARLO", style: TextStyle(color: Colors.white)),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(ForumRoute(
                    forumId: '00379c10-f444-11eb-ab17-4f148afc8cae',
                    pollAdded: false));
              },
              child: Text('boo', style: TextStyle(color: Colors.white)),
            )
          ]),
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
              Text('boo'),
              // ClipRRect(child: ModuleFeed()),
              // ClipRRect(child: FriendFeed()),
            ],
          ),
        ),
      ],
    );
  }
}
