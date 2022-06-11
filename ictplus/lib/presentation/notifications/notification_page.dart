import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/notifications/notification_watcher/notification_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/presentation/notifications/widgets/notifications.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<NotificationWatcherBloc>()
          ..add(const NotificationWatcherEvent.retrieveNotificationsStarted()),
        child: Scaffold(
            appBar: appBar(
                context: context,
                header: 'Notifications',
                canClose: true,
                notifications: false),
            bottomNavigationBar: const NavigationBar(),
            body: const Notifications()));
  }
}
