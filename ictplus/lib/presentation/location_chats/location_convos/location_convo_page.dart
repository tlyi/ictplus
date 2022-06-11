import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/location_convo_actor/location_convo_actor_bloc.dart';
import 'package:ictplus/application/chats/location_convo_watcher/location_convo_watcher_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/location_chats/location_convos/widgets/location_convo_actions.dart';
import 'package:ictplus/presentation/location_chats/location_convos/widgets/location_convo_messages.dart';

class LocationConvoPage extends StatelessWidget {
  final String convoId;
  final String title;
  const LocationConvoPage(
      {Key? key, required this.convoId, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LocationConvoWatcherBloc>()
            ..add(LocationConvoWatcherEvent.retrieveConvoStarted(convoId)),
        ),
        BlocProvider(
          create: (context) => getIt<LocationConvoActorBloc>()
            ..add(LocationConvoActorEvent.convoOpened(convoId)),
        ),
      ],
      child: Scaffold(
        appBar: appBar(context: context, header: title, canGoBack: true),
        body: DismissKeyboard(
          child: Column(children: [
            Expanded(
              child: ClipRRect(
                child: BlocBuilder<LocationConvoActorBloc,
                    LocationConvoActorState>(
                  builder: (context, state) {
                    return LocationConvoMessages(
                        convoId: convoId,
                        ownId:
                            context.read<LocationConvoActorBloc>().state.ownId);
                  },
                ),
              ),
            ),
            LocationConvoActions(convoId: convoId),
          ]),
        ),
      ),
    );
  }
}
