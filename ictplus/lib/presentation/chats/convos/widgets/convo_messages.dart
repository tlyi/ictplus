import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bubble/bubble.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:ictplus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:ictplus/presentation/core/get_time.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ConvoMessages extends StatelessWidget {
  final Profile otherProfile;
  const ConvoMessages({Key? key, required this.otherProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConvoWatcherBloc, ConvoWatcherState>(
        listener: (context, state) {
      state.maybeMap(
          loadMessagesFailure: (state) {
            FlushbarHelper.createError(
              message: state.dataFailure.map(
                  unexpected: (_) => 'Unexpected error',
                  insufficientPermission: (_) => 'Insufficient permission',
                  unableToUpdate: (_) => 'Unable to update'),
            ).show(context);
          },
          orElse: () {});
    }, builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadMessagesInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadMessagesSuccess: (state) {
          if (state.messages.isEmpty) {
            return const Center(child: Text('No messages yet'));
          } else {
            return ListView.builder(
              reverse: true,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              itemCount: state.messages.length,
              itemBuilder: (context, index) {
                final message = state.messages[index];
                final isOtherSender = message.senderId == otherProfile.uuid;
                if (isOtherSender) {
                  context
                      .read<ConvoActorBloc>()
                      .add(ConvoActorEvent.messageRead(message.messageId));
                }
                if (index == 0 && isOtherSender) {
                  context
                      .read<ConvoActorBloc>()
                      .add(const ConvoActorEvent.lastMessageRead());
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (index == state.messages.length - 1 ||
                        getDate(message.timeSent) !=
                            getDate(state.messages[index + 1].timeSent))
                      Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(getDate(message.timeSent),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black87))),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 5, bottom: 5),
                      child: Align(
                        alignment: isOtherSender
                            ? Alignment.topLeft
                            : Alignment.topRight,
                        child: Bubble(
                          radius: const Radius.circular(10),
                          color: isOtherSender
                              ? Colors.grey[400]
                              : constants.THEME_BLUE,
                          padding: const BubbleEdges.all(8),
                          nip: isOtherSender
                              ? BubbleNip.leftBottom
                              : BubbleNip.rightBottom,
                          showNip: index == 0 ||
                              state.messages[index - 1].senderId !=
                                  message.senderId,
                          child: message.photoUrl != ''
                              ? SizedBox(
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () => context
                                            .pushRoute(FullScreenPhotoRoute(
                                          photoUrl: message.photoUrl,
                                          tag: message.photoUrl,
                                        )),
                                        child: Hero(
                                          tag: message.photoUrl,
                                          child: CachedNetworkImage(
                                            imageUrl: message.photoUrl,
                                            placeholder: (context, url) =>
                                                const Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                            strokeWidth: 2.0,
                                                            color:
                                                                Colors.white)),
                                          ),
                                        ),
                                      ),
                                      if (message.messageBody.getOrCrash() !=
                                          '')
                                        const SizedBox(height: 5),
                                      _CaptionBody(
                                          message: message,
                                          isOtherSender: isOtherSender),
                                    ],
                                  ),
                                )
                              : _MessageBody(
                                  message: message,
                                  isOtherSender: isOtherSender,
                                ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
        loadMessagesFailure: (state) {
          return Container();
        },
      );
    });
  }
}

class _MessageBody extends StatelessWidget {
  final ChatMessage message;
  final bool isOtherSender;
  const _MessageBody(
      {Key? key, required this.message, required this.isOtherSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      runSpacing: -15,
      children: [
        Text(
          message.messageBody.getOrCrash(),
          style: const TextStyle(fontSize: 15),
        ),
        Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 13),
            child: Text(
              getTimeExact(message.timeSent),
              style: const TextStyle(fontSize: 10),
            ),
          ),
          if (!isOtherSender)
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 13),
              child: message.read
                  ? const Icon(MdiIcons.checkAll, color: Colors.white, size: 15)
                  : const Icon(MdiIcons.check, color: Colors.white, size: 15),
            ),
        ]),
      ],
    );
  }
}

class _CaptionBody extends StatelessWidget {
  final ChatMessage message;
  final bool isOtherSender;
  const _CaptionBody(
      {Key? key, required this.message, required this.isOtherSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      runSpacing: -15,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                message.messageBody.getOrCrash(),
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
        Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 13),
            child: Text(
              getTimeExact(message.timeSent),
              style: const TextStyle(fontSize: 10),
            ),
          ),
          if (!isOtherSender)
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 13),
              child: message.read
                  ? const Icon(MdiIcons.checkAll, color: Colors.white, size: 15)
                  : const Icon(MdiIcons.check, color: Colors.white, size: 15),
            ),
        ]),
      ],
    );
  }
}
