import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/location_chat_form/location_chat_form_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:geolocator/geolocator.dart';

class LocationChatForm extends StatelessWidget {
  const LocationChatForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationChatFormBloc, LocationChatFormState>(
      listener: (context, state) {
        state.createFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                          unexpected: (_) => 'Unexpected error',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          unableToUpdate: (_) => 'Unable to update'));
                }, (_) {
                  return context.popRoute();
                }));
        state.failureOrCurrentLocation.fold(
          (failure) {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('Location Error'),
                      content: const Text(
                          'Turn on permissions/location in settings so that FriendliNUS can set the location of this chat.'),
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
                message: failure.map(
                    insufficientPermission: (_) => '',
                    permissionDeniedForever: (_) => '',
                    serviceNotEnabled: (_) => 'No location service detected.',
                    unexpected: (_) =>
                        'Unexpected error in getting location.')).show(context);
          },
          (position) {},
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Container(
                margin: const EdgeInsets.all(30.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const _BuildTitle(),
                  const SizedBox(height: 15),
                  const _BuildIntroMessage(),
                  const SizedBox(height: 15),
                  _BuildLocationButton(),
                  _BuildSaveButton(),
                ])));
      },
    );
  }
}

class _BuildTitle extends StatelessWidget {
  const _BuildTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Chat Title',
      ),
      autocorrect: false,
      onChanged: (value) {
        context
            .read<LocationChatFormBloc>()
            .add(LocationChatFormEvent.titleChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        return context
            .read<LocationChatFormBloc>()
            .state
            .locationChat
            .chatTitle
            .value
            .fold(
                (f) => f.maybeMap(
                    emptyString: (_) => 'Title cannot be empty',
                    exceedingLength: (_) =>
                        'Title too long, maximum of 50 characters only',
                    orElse: () => null),
                (_) => null);
      },
    );
  }
}

class _BuildIntroMessage extends StatelessWidget {
  const _BuildIntroMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 5, //For the TextFormField height
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Send an intro message to others in the chat!',
      ),
      autocorrect: false,
      onChanged: (value) {
        context
            .read<LocationChatFormBloc>()
            .add(LocationChatFormEvent.messageChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return context
            .read<LocationChatFormBloc>()
            .state
            .introMessage
            .value
            .fold(
                (f) => f.maybeMap(
                    emptyString: (_) => 'Please type an intro message',
                    exceedingLength: (_) =>
                        'Message too long, maximum of 1000 characters only',
                    orElse: () => null),
                (_) => null);
      },
    );
  }
}

class _BuildLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Set Chat Location",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Stack(
              children: [
                if (context
                    .read<LocationChatFormBloc>()
                    .state
                    .isGettingLocation)
                  const Positioned(
                      left: 8,
                      top: 8,
                      child: SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator())),
                if (context
                            .read<LocationChatFormBloc>()
                            .state
                            .locationChat
                            .latitude !=
                        0 &&
                    !context
                        .read<LocationChatFormBloc>()
                        .state
                        .isGettingLocation)
                  const Positioned(
                      left: 5,
                      top: 5,
                      child: Icon(Icons.check, color: Colors.grey)),
                GestureDetector(
                    onTap: () {
                      context
                          .read<LocationChatFormBloc>()
                          .add(const LocationChatFormEvent.locationSet());
                    },
                    child: const Icon(Icons.crop_square,
                        size: 35, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildSaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(constants.THEME_BLUE)),
          onPressed: () {
            if (context
                        .read<LocationChatFormBloc>()
                        .state
                        .locationChat
                        .longitude ==
                    0 ||
                context
                        .read<LocationChatFormBloc>()
                        .state
                        .locationChat
                        .latitude ==
                    0) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('No Location Input'),
                        content: const Text(
                            'Please turn on permissions/location in settings and set a location for the chat by clicking the checkbox.'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK')),
                        ],
                      ));
            }

            context
                .read<LocationChatFormBloc>()
                .add(const LocationChatFormEvent.createdChat());
          },
          child: const Text(
            "Create Chat",
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}
