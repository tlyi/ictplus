import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/location_chat_watcher/location_chat_watcher_bloc.dart';
import 'package:ictplus/application/chats/search_location_chats/search_location_chats_bloc.dart';
import 'package:ictplus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:ictplus/presentation/location_chats/location_chat_list/widgets/location_chat_list.dart';
import 'package:ictplus/presentation/location_chats/location_chat_list/widgets/search_location_chats.dart';

import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class LocationChatPage extends StatelessWidget {
  const LocationChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<LocationChatWatcherBloc>()
                ..add(const LocationChatWatcherEvent.retrieveChatsStarted())),
          BlocProvider(create: (context) => getIt<SearchLocationChatsBloc>()),
        ],
        child: BlocBuilder<LocationChatWatcherBloc, LocationChatWatcherState>(
            builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Text(
                  'Location Chats',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: IconButton(
                    onPressed: () async {
                      await context.pushRoute(const LocationChatFormRoute());
                      context.read<LocationChatWatcherBloc>().add(
                          const LocationChatWatcherEvent.refreshedLocation());
                    },
                    icon: const Icon(Icons.add_box, color: Colors.grey),
                    tooltip: 'Create New Chat'),
                actions: [
                  Stack(children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_none,
                          color: Colors.grey),
                      onPressed: () {
                        context.pushRoute(const NotificationRoute());
                      },
                      padding: const EdgeInsets.only(right: 20),
                    ),
                    BlocBuilder<NotifCounterWatcherBloc,
                        NotifCounterWatcherState>(
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
                                                  fontWeight:
                                                      FontWeight.w300))))
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
                ]),
            bottomNavigationBar: const NavigationBar(),
            floatingActionButton: FloatingActionButton(
                tooltip: 'Find Nearby Chats',
                onPressed: () {
                  context
                      .read<LocationChatWatcherBloc>()
                      .add(const LocationChatWatcherEvent.refreshedLocation());
                },
                backgroundColor: constants.THEME_BLUE,
                child: const Icon(Icons.location_searching)),
            body: Stack(children: [
              const LocationChatList(),
              BuildFloatingSearchBar(),
            ]),
          );
        }));
  }
}
