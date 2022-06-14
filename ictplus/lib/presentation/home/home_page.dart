import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/injection.dart';

import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/home/event_card.dart';
import 'package:ictplus/presentation/profile/widgets/own_profile.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List _data = [
    {
      'isUpcoming': true,
      'dates': '17 July 2022 to 23 July 2022',
      'label': 'ICT 2',
    },
    {
      'isUpcoming': false,
      'dates': '23 June 2021 to 27 June 2021',
      'label': 'ICT 1',
    },
    {
      'isUpcoming': false,
      'dates': '18 Feb 2021 to 27 Mar 2021',
      'label': 'ARF',
    },
    {
      'isUpcoming': false,
      'dates': '18 Feb 2020 to 27 Mar 2020',
      'label': 'ARF',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileActorBloc>()
            ..add(const ProfileActorEvent.loadingOwnProfile()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(
          context: context,
          header: 'ICT+',
          showLogo: true,
        ),
        bottomNavigationBar: const NavigationBar(),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                OwnProfile(),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        color: constants.THEME_TRANSLUCENT_ORANGE,
                        borderRadius: BorderRadius.all(Radius.circular(13.0))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              'Search an item',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0x66FFFFFF),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                            color: Color(0x66FFFFFF),
                            size: 17.0,
                          )
                        ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        'myEvents',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Container(),
                    Container(),
                  ],
                ),
                Column(
                  children: [
                    EventCard(
                      isUpcoming: true,
                      dates: _data[0]['dates'] as String,
                      label: _data[0]['label'] as String,
                      callback: () {
                        context.pushRoute(ForumRoute(
                            forumId: '00379c10-f444-11eb-ab17-4f148afc8cae',
                            pollAdded: false));
                      },
                    ),
                    EventCard(
                        isUpcoming: false,
                        dates: _data[1]['dates'] as String,
                        label: _data[1]['label'] as String,
                        callback: () {}),
                    EventCard(
                        isUpcoming: false,
                        dates: _data[2]['dates'] as String,
                        label: _data[2]['label'] as String,
                        callback: () {}),
                    EventCard(
                        isUpcoming: false,
                        dates: _data[3]['dates'] as String,
                        label: _data[3]['label'] as String,
                        callback: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
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
