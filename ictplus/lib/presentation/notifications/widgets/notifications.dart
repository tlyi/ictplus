import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/notifications/notification_watcher/notification_watcher_bloc.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationWatcherBloc, NotificationWatcherState>(
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
                child: CircularProgressIndicator(
                  color: constants.THEME_ORANGE,
                ),
              ),
          loadSuccess: (state) {
            final int length = state.notifications.length;
            return RefreshIndicator(
              onRefresh: () async {
                context.read<NotificationWatcherBloc>().add(
                    const NotificationWatcherEvent
                        .retrieveNotificationsStarted());
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('Notifications',
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.white)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.hasMore ? length + 1 : length,
                      itemBuilder: (context, index) {
                        if (index == length) {
                          if (!state.isRetrieving) {
                            context.read<NotificationWatcherBloc>().add(
                                NotificationWatcherEvent
                                    .retrieveMoreNotifications(
                                        state.notifications, state.profiles));
                          }
                          return Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 15),
                            height: 30,
                            width: 30,
                            child: const Center(
                                child: CircularProgressIndicator()),
                          );
                        } else {
                          final notification = state.notifications[index];
                          final profile = state.profiles[index];
                          return Card(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            color: Colors.black,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(profile.photoUrl),
                                backgroundColor: Colors.white,
                              ),
                              title: Column(
                                children: [
                                  Text(notification.details,
                                      style: const TextStyle(
                                          height: 1.7,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 13,
                                          color: Colors.white)),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                            '@' +
                                                profile.rank +
                                                ' ' +
                                                profile.fullName,
                                            style: const TextStyle(
                                                height: 1.7,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13,
                                                color: constants.THEME_ORANGE)),
                                      ),
                                      Text(getTime(notification.timestamp),
                                          style: const TextStyle(
                                              height: 1.7,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                    ],
                                  )
                                ],
                              ),
                              // trailing: Text(getTime(notification.timestamp)),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          },
          loadFailure: (state) {
            return Container();
          });
    });
  }
}
