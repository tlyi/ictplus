import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/chats/chat_list/widgets/chat_list.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context: context, header: 'Chats'),
        bottomNavigationBar: const NavigationBar(),
        body: Container(
          alignment: Alignment.topCenter,
          child: BlocProvider(
            create: (context) => getIt<ChatWatcherBloc>()
              ..add(const ChatWatcherEvent.retrieveChatsStarted()),
            child: const ChatList(),
          ),
        ));
  }
}
