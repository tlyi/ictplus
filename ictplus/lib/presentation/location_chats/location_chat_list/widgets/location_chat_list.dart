import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/location_chat_watcher/location_chat_watcher_bloc.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class LocationChatList extends StatelessWidget {
  const LocationChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationChatWatcherBloc, LocationChatWatcherState>(
        listener: (context, state) {
      state.maybeMap(
          loadDataFailure: (state) => FlushbarHelper.createError(
                message: state.dataFailure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'),
              ).show(context),
          loadLocationFailure: (state) {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('Location Error'),
                      content: const Text(
                          'Turn on permissions/location in settings so that FriendliNUS can connect you to the nearest chats available.'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close')),
                        TextButton(
                            onPressed: () async {
                              await Geolocator.openLocationSettings();
                              Navigator.pop(context);
                            },
                            child: const Text('Settings'))
                      ],
                    ));

            return FlushbarHelper.createError(
              message: state.locationFailure.map(
                  unexpected: (_) =>
                      'Unexpected error in getting location. Check if location services are turned on or press the blue button to try again.',
                  insufficientPermission: (_) =>
                      'Insufficient location permission.',
                  permissionDeniedForever: (_) =>
                      'Insufficient location permission.',
                  serviceNotEnabled: (_) => 'No location service detected.'),
            ).show(context);
          },
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
                child: Text('No chats nearby, create one now!'),
              );
            } else {
              return Column(
                children: [
                  const SizedBox(height: 60),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.chats.length,
                      itemBuilder: (context, index) {
                        final chat = state.chats[index];
                        final int distance = state.distances[index].toInt();
                        return Card(
                          child: ListTile(
                            leading: SizedBox(
                              width: 50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.near_me,
                                    color: distance > 1000
                                        ? Colors.grey
                                        : constants.THEME_BLUE,
                                    size: 20,
                                  ),
                                  Flexible(
                                    child: Text(distance > 1000
                                        ? '${distance ~/ 1000}km'
                                        : '${distance}m'),
                                  ),
                                ],
                              ),
                            ),
                            title: Text(chat.chatTitle.getOrCrash()),
                            subtitle: Text(
                              chat.lastMessage,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: Text(getTimeOrDate(chat.timestamp)),
                            onTap: () {
                              context.pushRoute(LocationConvoRoute(
                                  convoId: chat.chatId,
                                  title: chat.chatTitle.getOrCrash()));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
          loadDataFailure: (state) {
            return Container();
          },
          loadLocationFailure: (state) {
            return Container();
          });
    });
  }
}
