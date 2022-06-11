import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:ictplus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:ictplus/application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/chats/convos/widgets/convo_actions.dart';
import 'package:ictplus/presentation/chats/convos/widgets/convo_messages.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class ConvoPage extends StatelessWidget {
  final Profile otherProfile;
  const ConvoPage({Key? key, required this.otherProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ConvoWatcherBloc>()
            ..add(ConvoWatcherEvent.retrieveConvoStarted(otherProfile.uuid)),
        ),
        BlocProvider(
          create: (context) => getIt<ConvoActorBloc>()
            ..add(ConvoActorEvent.convoOpened(otherProfile.uuid)),
        ),
      ],
      child: BlocBuilder<ConvoWatcherBloc, ConvoWatcherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: Stack(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.grey),
                    onPressed: () {
                      context.popRoute();
                    },
                  ),
                  Positioned(
                    right: 0,
                    child: BlocBuilder<ChatCounterWatcherBloc,
                        ChatCounterWatcherState>(
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
                title: GestureDetector(
                  onTap: () async {
                    context
                        .read<ConvoWatcherBloc>()
                        .add(const ConvoWatcherEvent.retrieveConvoEnded());
                    await context.pushRoute(
                        OtherProfileRoute(userProfile: otherProfile));
                    context.read<ConvoWatcherBloc>().add(
                        ConvoWatcherEvent.retrieveConvoStarted(
                            otherProfile.uuid));
                  },
                  child: Text(
                    otherProfile.username.getOrCrash(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () async {
                      context
                          .read<ConvoWatcherBloc>()
                          .add(const ConvoWatcherEvent.retrieveConvoEnded());
                      await context.pushRoute(
                          OtherProfileRoute(userProfile: otherProfile));
                      context.read<ConvoWatcherBloc>().add(
                          ConvoWatcherEvent.retrieveConvoStarted(
                              otherProfile.uuid));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        otherProfile.photoUrl,
                      ),
                      backgroundColor: Colors.white,
                      radius: 23.0,
                    ),
                  ),
                  const SizedBox(width: 10),
                ]),
            body: DismissKeyboard(
              child: Column(children: [
                Expanded(
                  child: ClipRRect(
                    child: ConvoMessages(
                      otherProfile: otherProfile,
                    ),
                  ),
                ),
                ConvoActions(otherProfile: otherProfile),
              ]),
            ),
          );
        },
      ),
    );
  }
}
