import 'dart:io';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/chats/location_convo_actor/location_convo_actor_bloc.dart';
import 'package:ictplus/presentation/core/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LocationConvoActions extends StatefulWidget {
  final String convoId;
  const LocationConvoActions({Key? key, required this.convoId})
      : super(key: key);

  @override
  _LocationConvoActionsState createState() => _LocationConvoActionsState();
}

class _LocationConvoActionsState extends State<LocationConvoActions> {
  final textController = TextEditingController();

  void clearText() {
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationConvoActorBloc, LocationConvoActorState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            height: 60,
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      MdiIcons.imagePlus,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () async {
                      final PickedFile? pickedFile = await imagePicker(context);
                      File? pickedImage;

                      if (pickedFile == null) {
                        FlushbarHelper.createError(message: 'No image picked')
                            .show(context);
                      } else {
                        pickedImage = File(pickedFile.path);
                        showDialog(
                            context: context,
                            builder: (BuildContext innerContext) {
                              return AlertDialog(
                                  content: SingleChildScrollView(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(innerContext);
                                        },
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.grey,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Image.file(pickedImage!,
                                        fit: BoxFit.contain),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            decoration: const InputDecoration(
                                              hintText: "Add a caption",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (message) {
                                              context
                                                  .read<
                                                      LocationConvoActorBloc>()
                                                  .add(LocationConvoActorEvent
                                                      .messageChanged(message));
                                            },
                                            onSubmitted: (_) {
                                              context
                                                  .read<
                                                      LocationConvoActorBloc>()
                                                  .add(LocationConvoActorEvent
                                                      .photoSent(pickedImage!));
                                              Navigator.pop(innerContext);
                                            },
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: IconButton(
                                            icon: const Icon(
                                              Icons.send,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              context
                                                  .read<
                                                      LocationConvoActorBloc>()
                                                  .add(LocationConvoActorEvent
                                                      .photoSent(pickedImage!));
                                              Navigator.pop(innerContext);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ));
                            });
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Message",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                    onChanged: (message) {
                      context
                          .read<LocationConvoActorBloc>()
                          .add(LocationConvoActorEvent.messageChanged(message));
                    },
                    controller: textController,
                    onSubmitted: (_) {
                      if (context
                              .read<LocationConvoActorBloc>()
                              .state
                              .chatMessage
                              .messageBody
                              .getOrCrash() !=
                          '') {
                        context
                            .read<LocationConvoActorBloc>()
                            .add(const LocationConvoActorEvent.messageSent());
                        clearText();
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () {
                      if (context
                          .read<LocationConvoActorBloc>()
                          .state
                          .chatMessage
                          .messageBody
                          .value
                          .isLeft()) {
                        FlushbarHelper.createError(
                                message:
                                    'Message exceeds maximum characters of 4096')
                            .show(context);
                      } else if (context
                              .read<LocationConvoActorBloc>()
                              .state
                              .chatMessage
                              .messageBody
                              .getOrCrash() !=
                          '') {
                        context
                            .read<LocationConvoActorBloc>()
                            .add(const LocationConvoActorEvent.messageSent());
                        clearText();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
