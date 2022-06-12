import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:ictplus/application/forum/module_actor/module_actor_bloc.dart';
import 'package:ictplus/application/forum/module_watcher/module_forum_watcher/module_forum_watcher_bloc.dart';
import 'package:ictplus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/forum/forum_tab/widgets/module_forum_list.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class ModuleForumPage extends StatelessWidget {
  final String moduleCode;
  const ModuleForumPage({Key? key, required this.moduleCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ModuleForumWatcherBloc>()
            ..add(ModuleForumWatcherEvent.refreshFeed(moduleCode, 'Recent')),
        ),
        BlocProvider(
            create: (context) =>
                getIt<ForumActorBloc>()..add(const ForumActorEvent.started())),
        BlocProvider(
            create: (context) => getIt<ModuleActorBloc>()
              ..add(const ModuleActorEvent.retrieveProfile())),
      ],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              context.popRoute();
            },
          ),
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Text(moduleCode,
                  style: const TextStyle(fontSize: 20, color: Colors.black)),
              if (moduleCode != "Anonymous" && moduleCode != "General")
                BlocConsumer<ModuleActorBloc, ModuleActorState>(
                    listener: (context, state) {
                  state.failureOrSuccess.fold(
                      (failure) => FlushbarHelper.createError(
                              message: failure.map(
                                  unexpected: (_) => 'Unexpected error',
                                  insufficientPermission: (_) =>
                                      'Insufficient permission',
                                  unableToUpdate: (_) => 'Unable to update'))
                          .show(context),
                      (success) => null);
                }, builder: (context, state) {
                  if (state.rebuild) {
                    return IconButton(
                        onPressed: () {
                          if (context
                              .read<ModuleActorBloc>()
                              .state
                              .profile
                              .modules
                              .contains(moduleCode)) {
                            context.read<ModuleActorBloc>().add(
                                ModuleActorEvent.moduleRemoved(moduleCode));
                          } else if (context
                                  .read<ModuleActorBloc>()
                                  .state
                                  .profile
                                  .modules
                                  .length >=
                              8) {
                            FlushbarHelper.createError(
                                    message:
                                        'Maximum number of modules that you can follow is 8')
                                .show(context);
                          } else {
                            context
                                .read<ModuleActorBloc>()
                                .add(ModuleActorEvent.moduleAdded(moduleCode));
                          }
                        },
                        icon: Icon(
                            (context
                                    .read<ModuleActorBloc>()
                                    .state
                                    .profile
                                    .modules
                                    .contains(moduleCode))
                                ? Icons.check
                                : Icons.add,
                            color: Colors.black));
                  } else {
                    return Container();
                  }
                })
            ],
          ),
          actions: [
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
                    right: 10,
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
          ],
        ),
        bottomNavigationBar: const NavigationBar(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Post a Forum',
          onPressed: () {
            context.pushRoute(const ForumFormRoute());
          },
          backgroundColor: constants.THEME_BLUE,
          child: const Icon(Icons.create),
        ),
        body: ClipRRect(
          child: ModuleForumList(
            moduleCode: moduleCode,
          ),
        ),
      ),
    );
  }
}
