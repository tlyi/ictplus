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
            icon: const Image(
              image: AssetImage('images/ict_black_logo.png'),
            ),
            tooltip: 'Home',
            onPressed: () {
              context.replaceRoute(const HomeRoute());
            },
          ),
          Stack(children: [
            IconButton(
              icon: const Icon(
                Icons.forum,
                size: 35,
              ),
              tooltip: 'Chats',
              onPressed: () {
                context.replaceRoute(const ChatListRoute());
              },
            ),
            Positioned(
              right: 0,
              child:
                  BlocBuilder<ChatCounterWatcherBloc, ChatCounterWatcherState>(
                builder: (context, state) {
                  if (state is LoadSuccess) {
                    if (state.unreadChatCounter == 0) {
                      return Container();
                    } else {
                      return ClipOval(
                        child: Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 20,
                            color: constants.THEME_NOTIF_BG,
                            child: Text(
                                state.unreadChatCounter >= 100
                                    ? '+'
                                    : state.unreadChatCounter.toString(),
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400))),
                      );
                    }
                  } else {
                    return ClipOval(
                      child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        color: constants.THEME_NOTIF_BG,
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: CircularProgressIndicator(
                              color: Colors.white, strokeWidth: 1),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ]),
          IconButton(
            icon: const Icon(
              Icons.near_me,
              size: 35,
            ),
            tooltip: 'Location Chats',
            onPressed: () {
              context.replaceRoute(const LocationChatRoute());
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.view_list_rounded,
              size: 35,
            ),
            tooltip: 'Forums',
            onPressed: () {
              context.replaceRoute(const ForumTabRoute());
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 35,
            ),
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
