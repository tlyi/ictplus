import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:ictplus/presentation/core/get_time.dart';

class ModuleOverviewPage extends StatelessWidget {
  const ModuleOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ModuleWatcherBloc, ModuleWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadFailure: (state) => FlushbarHelper.createError(
                  message: state.dataFailure.map(
                      unexpected: (_) => 'Unexpected error',
                      insufficientPermission: (_) => 'Insufficient permission',
                      unableToUpdate: (_) => 'Unable to update'),
                ).show(context),
            orElse: () {});
      },
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return Column(
                children: [
                  const SizedBox(height: 60),
                  Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.modules.length,
                        itemBuilder: (context, index) {
                          final module = state.modules[index];
                          final time = module.lastPosted == '0'
                              ? 'No posts yet :('
                              : 'Last post ${getTime(module.lastPosted)}...';
                          return Card(
                            color: constants.THEME_LIGHT_BLUE,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: constants.THEME_LIGHT_BLUE,
                                  width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListTile(
                              title: Text(
                                  (module.moduleCode == "Anonymous" ||
                                          module.moduleCode == "General")
                                      ? module.moduleTitle
                                      : '${module.moduleCode} ${module.moduleTitle}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(time),
                              onTap: () async {
                                await context.pushRoute(ModuleForumRoute(
                                    moduleCode: module.moduleCode));
                                context.read<ModuleWatcherBloc>().add(
                                    const ModuleWatcherEvent
                                        .retrieveModulesStarted());
                              },
                            ),
                          );
                        }),
                  ),
                ],
              );
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}
