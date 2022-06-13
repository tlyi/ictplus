import 'dart:io';
import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:ictplus/application/myevents/myevents_form/myevents_form_bloc.dart';
import 'package:ictplus/presentation/core/image_picker.dart';

import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class ForumForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumFormBloc, ForumFormState>(
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
                }, (_) => context.popRoute()));
        state.photoUrl.fold(
            (f) => FlushbarHelper.createError(
                message: 'Error uploading photo to database, try again'),
            (r) => null);
        state.createPollFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                          unexpected: (_) => 'Unexpected error',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          unableToUpdate: (_) => 'Unable to update'));
                }, (_) {}));
      },
      builder: (context, state) {
        final bool photoAdded =
            context.read<ForumFormBloc>().state.forumPost.photoAdded;
        final bool pollAdded =
            context.read<ForumFormBloc>().state.forumPost.pollAdded;
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Container(
            margin: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const _BuildTitle(),
                const SizedBox(height: 15),
                const _BuildBody(),
                const SizedBox(height: 15),
                const SizedBox(height: 15),
                if (photoAdded) const _BuildImage(),
                if (pollAdded) _BuildPoll(),
                Row(
                  children: <Widget>[
                    _BuildAddImageButton(),
                    const SizedBox(width: 15),
                    _BuildAddPollButton(),
                    const SizedBox(width: 20),
                    _BuildSaveButton(),
                  ],
                ),
              ],
            ),
          ),
        );
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
        labelText: 'Title',
      ),
      autocorrect: false,
      onChanged: (value) {
        context.read<ForumFormBloc>().add(ForumFormEvent.titleChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        return context.read<ForumFormBloc>().state.forumPost.title.value.fold(
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

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

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
        labelText: 'Type away...',
      ),
      autocorrect: false,
      onChanged: (value) {
        context.read<ForumFormBloc>().add(ForumFormEvent.bodyChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return context.read<ForumFormBloc>().state.forumPost.body.value.fold(
            (f) => f.maybeMap(
                exceedingLength: (_) =>
                    'Text too long, maximum of 200 characters only',
                orElse: () => null),
            (_) => null);
      },
    );
  }
}

class _BuildImage extends StatelessWidget {
  const _BuildImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200, // MediaQuery.of(context).size.height * 0.4,
        ///width: MediaQuery.of(context).size.width *0.8,

        child: Image(
          fit: BoxFit.contain,
          image: FileImage(context.read<ForumFormBloc>().state.photoFile),
        ));
  }
}

class _BuildPoll extends StatelessWidget {
  const _BuildPoll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> dropList = [
      0,
      2,
      3,
      4
    ]; //Poll must minimally have 2 options
    final List<int> intList = [0, 1, 2, 3, 4];
    int numOptions = context.read<ForumFormBloc>().state.poll.numOptions;

    return Column(
      children: [
        Row(
          children: <Widget>[
            const Text('Number of Poll Options'),
            const SizedBox(width: 20),
            DropdownButton<int>(
              value: numOptions,
              items: dropList.map((int value) {
                return DropdownMenuItem<int>(
                    value: value, child: Text(value.toString()));
              }).toList(),
              onChanged: (int? newValue) {
                context
                    .read<ForumFormBloc>()
                    .add(ForumFormEvent.pollNumOptionsChanged(newValue!));
              },
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Poll Question',
            ),
            autocorrect: false,
            onChanged: (value) => context
                .read<ForumFormBloc>()
                .add(ForumFormEvent.pollTitleChanged(value)),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) {
              return context.read<ForumFormBloc>().state.poll.title.value.fold(
                  (f) => f.maybeMap(
                      emptyString: (_) => 'Poll question cannot be empty',
                      exceedingLength: (_) =>
                          'Question too long, maximum of 50 characters only',
                      orElse: () => null),
                  (_) => null);
            },
          ),
        ),
        for (var i in intList.take(numOptions))
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Poll Option #${i + 1}',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .read<ForumFormBloc>()
                  .add(ForumFormEvent.pollOptionChanged(i, value)),
              autovalidateMode:
                  context.read<ForumFormBloc>().state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
              validator: (_) {
                return context
                    .read<ForumFormBloc>()
                    .state
                    .poll
                    .optionList[i]
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            emptyString: (_) => 'Poll option cannot be empty',
                            exceedingLength: (_) =>
                                'Option too long, maximum of 40 characters only',
                            orElse: () => null),
                        (_) => null);
              },
            ),
          ),
      ],
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
            if (context.read<ForumFormBloc>().state.forumPost.photoAdded) {
              context
                  .read<ForumFormBloc>()
                  .add(const ForumFormEvent.photoAdded());
            } else {
              if (context.read<ForumFormBloc>().state.forumPost.pollAdded &&
                  context.read<ForumFormBloc>().state.poll.numOptions == 0) {
                FlushbarHelper.createError(
                        message: 'Poll options cannot be empty')
                    .show(context);
              } else {
                context
                    .read<ForumFormBloc>()
                    .add(const ForumFormEvent.createdPost());
              }
            }
          },
          child: const Text(
            "Post",
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}

class _BuildAddImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.read<ForumFormBloc>().state.forumPost.photoAdded) {
      return Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Container(
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[300],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                tooltip: 'Remove Image',
                onPressed: () => context
                    .read<ForumFormBloc>()
                    .add(const ForumFormEvent.photoRemoved()),
              )));
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: constants.THEME_BLUE,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.image_outlined,
              color: Colors.white,
            ),
            tooltip: 'Add Image',
            onPressed: () async {
              void pickPhoto() async {
                final PickedFile? pickedFile = await imagePicker(context);
                File? pickedImage;
                if (pickedFile == null) {
                  FlushbarHelper.createError(message: 'No image picked')
                      .show(context);
                } else {
                  pickedImage = File(pickedFile.path);

                  context
                      .read<ForumFormBloc>()
                      .add(ForumFormEvent.photoChanged(pickedImage));
                }
              }

              if (context.read<ForumFormBloc>().state.forumPost.pollAdded) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Delete Poll?'),
                          content: const Text(
                              'Press OK to delete the existing poll and add a picture.'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  pickPhoto();
                                },
                                child: const Text('OK'))
                          ],
                        ));
              } else {
                pickPhoto();
              }
            },
          ),
        ),
      );
    }
  }
}

class _BuildAddPollButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.read<ForumFormBloc>().state.forumPost.pollAdded) {
      return Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Container(
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[300],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                tooltip: 'Remove Poll',
                onPressed: () => context
                    .read<ForumFormBloc>()
                    .add(const ForumFormEvent.pollRemoved()),
              )));
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF7BA5BB),
          ),
          child: IconButton(
            icon: Transform.rotate(
              angle: 90 * pi / 180,
              child: const Icon(
                Icons.poll_outlined,
                color: Colors.white,
              ),
            ),
            tooltip: 'Add Poll',
            onPressed: () {
              if (context.read<ForumFormBloc>().state.forumPost.photoAdded) {
                showDialog(
                    context: context,
                    builder: (BuildContext innerContext) => AlertDialog(
                          title: const Text('Delete Photo?'),
                          content: const Text(
                              'Press OK to delete the uploaded photo and add a poll.'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () => Navigator.pop(innerContext),
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () {
                                  context
                                      .read<ForumFormBloc>()
                                      .add(const ForumFormEvent.pollAdded());

                                  Navigator.pop(innerContext);
                                },
                                child: const Text('OK'))
                          ],
                        ));
              } else {
                context
                    .read<ForumFormBloc>()
                    .add(const ForumFormEvent.pollAdded());
              }
            },
          ),
        ),
      );
    }
  }
}
