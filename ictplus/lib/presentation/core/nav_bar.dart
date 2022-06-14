import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

/// Add the line 'bottomNavigationBar: const NavigationBar(),' within a Scaffold Block
class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(color: Colors.black54, width: 0.4))),
      height: 70,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined, size: 35,
            ), color: Colors.white,
            tooltip: 'Home',
            onPressed: () {
              context.replaceRoute(const HomeRoute());
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 35,
            ),
            color: Colors.white,
            tooltip: 'Profile',
            onPressed: () {
              context.replaceRoute(ProfileRoute(canGoBack: false));
            },
          ),
        ],
      ),
    );
  }
}
