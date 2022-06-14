import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';
import 'package:ictplus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

/// Scaffold -> appBar:

AppBar appBar({
  required BuildContext context,
  required String header,
  bool showLogo = false,
  bool canGoBack = false,
  bool canClose = false,
  bool canSignOut = false,
  bool isHome = false,
  bool notifications = true,
  double fontSize = 20.0,
}) {
  return AppBar(
    leading: canGoBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              context.popRoute();
            },
          )
        : canClose
            ? IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  context.popRoute();
                },
              )
            : null,
    title: showLogo == true
        ? Image(image: AssetImage('images/ict_white_logo.png'), height: 50)
        : isHome
            ? Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image(
                    image: AssetImage('images/ict_white_logo.png'), height: 50),
              )
            : Text(header,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                )),
    backgroundColor: Colors.black,
    centerTitle: isHome ? false : true,
    actions: [
      if (notifications)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.notifications_none,
                    color: Colors.white, size: 20),
                onPressed: () {
                  context.pushRoute(const NotificationRoute());
                },
              ),
            ),
          ]),
        )
      else
        Container(),
    ],
  );
}
