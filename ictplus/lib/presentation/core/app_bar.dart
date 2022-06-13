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
  bool notifications = true,
  double fontSize = 20.0,
}) {
  return AppBar(
    leading: canGoBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              context.popRoute();
            },
          )
        : canClose
            ? IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  context.popRoute();
                },
              )
            : canSignOut
                ? BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                    state.maybeMap(
                      unauthenticated: (_) =>
                          context.replaceRoute(const SignInRoute()),
                      orElse: () {},
                    );
                  }, builder: (context, state) {
                    return IconButton(
                      icon: const Icon(Icons.logout, color: Colors.grey),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext innerContext) => AlertDialog(
                                  title: const Text('Sign Out?'),
                                  content: const Text(
                                      'Press OK to confirm sign out.'),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () =>
                                            Navigator.pop(innerContext),
                                        child: const Text('Cancel')),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(innerContext);
                                          context
                                              .read<AuthBloc>()
                                              .add(const AuthEvent.signedOut());
                                        },
                                        child: const Text('OK'))
                                  ],
                                ));
                      },
                    );
                  })
                : Container(),
    title: showLogo == true
        ? Image(image: AssetImage('images/ict_white_logo.png'), height: 50)
        : Text(header,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            )),
    backgroundColor: Colors.black,
    centerTitle: true,
    actions: [
      if (notifications)
        Stack(children: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.grey),
            onPressed: () {
              context.pushRoute(const NotificationRoute());
            },
            padding: const EdgeInsets.only(right: 20),
          ),
          BlocBuilder<NotifCounterWatcherBloc, NotifCounterWatcherState>(
            builder: (context, state) {
              return Positioned(
                top: 5,
                right: 12,
                child: (state is LoadSuccess)
                    ? state.unread == 0
                        ? Container()
                        : ClipOval(
                            child: Container(
                                alignment: Alignment.center,
                                width: 20,
                                height: 20,
                                color: constants.THEME_NOTIF_BG,
                                child: Text(
                                    state.unread > 100
                                        ? '+'
                                        : state.unread.toString(),
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300))))
                    : ClipOval(
                        child: Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          color: constants.THEME_NOTIF_BG,
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 1,
                            ),
                          ),
                        ),
                      ),
              );
            },
          ),
        ])
      else
        Container(),
    ],
  );
}
