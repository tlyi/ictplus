import 'package:flutter/material.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/presentation/profile/profile_header_page.dart';
import 'package:ictplus/presentation/home/event_card.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(
        context: context,
        header: 'ICT+',
        isHome: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 5.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ProfileHeaderPage(canGoBack: false, canUpdate: true),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.85,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      color: constants.THEME_TRANSLUCENT_ORANGE,
                      borderRadius: BorderRadius.all(Radius.circular(13.0))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Search an event',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0x66FFFFFF),
                          ),
                        ),
                        const Icon(
                          Icons.search,
                          color: Color(0x66FFFFFF),
                          size: 17.0,
                        )
                      ])),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(35, 15, 0, 5),
              child: Text(
                'myEvents',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
            ))
          ],
        ),
      ),
    );
  }
}
