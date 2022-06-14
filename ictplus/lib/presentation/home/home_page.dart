import 'package:flutter/material.dart';

import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/home/event_card.dart';
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
      'dates': '23 June 2022 to 27 June 2022',
      'label': 'ICT 1',
    },
    {
      'isUpcoming': false,
      'dates': '17 Feb 2022 to 27 June 2022',
      'label': 'ARF',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(
        context: context,
        header: 'ICT+',
        showLogo: true,
      ),
      bottomNavigationBar: const NavigationBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
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
            EventCard(
              isUpcoming: true,
              callback: () {
                context.pushRoute(ForumRoute(
                    forumId: '00379c10-f444-11eb-ab17-4f148afc8cae',
                    pollAdded: false));
              },
            ),
            EventCard(isUpcoming: false, callback: () {}),
            EventCard(isUpcoming: false, callback: () {}),
          ],
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
