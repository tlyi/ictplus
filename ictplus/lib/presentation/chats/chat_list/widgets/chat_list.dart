import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWatcherBloc, ChatWatcherState>(
        listener: (context, state) {
      state.maybeMap(
          loadFailure: (state) => FlushbarHelper.createError(
                message: state.dataFailure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'),
              ).show(context),
          orElse: () {});
    }, builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            if (state.chats.isEmpty) {
              return const Center(
                child: Text('No chats yet'),
              );
            } else {
              return ListView.builder(
                  itemCount: state.chats.length,
                  itemBuilder: (context, index) {
                    final chat = state.chats[index];
                    final profile = state.profiles[index];

                    return Card(
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: ClipOval(
                            child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                                imageUrl: profile.photoUrl,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator())),
                          ),
                        ),
                        title: Text(profile.username.getOrCrash()),
                        subtitle: Text(
                          chat.lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: chat.lastSenderId == profile.uuid
                                ? chat.lastMessageRead
                                    ? Container()
                                    : const Icon(MdiIcons.checkboxBlankCircle,
                                        size: 15, color: constants.THEME_BLUE)
                                : chat.lastMessageRead
                                    ? const Icon(MdiIcons.checkAll,
                                        size: 17, color: constants.THEME_BLUE)
                                    : const Icon(MdiIcons.check, size: 17),
                          ),
                          Text(getTimeOrDate(chat.timestamp))
                        ]),
                        onTap: () {
                          context.pushRoute(ConvoRoute(otherProfile: profile));
                        },
                      ),
                    );
                  });
            }
          },
          loadFailure: (state) {
            return Container();
          });
    });
  }
}
