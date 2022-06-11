import 'dart:io';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:ictplus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:ictplus/presentation/core/image_picker.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';

class RegisterProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        unexpected: (_) => 'Unexpected error',
                        insufficientPermission: (_) =>
                            'Insufficient permission',
                        unableToUpdate: (_) => 'Unable to update'),
                  ).show(context);
                }, (_) {
                  context.replaceRoute(const HomeRoute());
                }));
        state.photoUrl.fold(
            (f) => FlushbarHelper.createError(
                message: 'Error uploading photo to database, try again'),
            (r) => null);
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Container(
            margin: const EdgeInsets.all(30.0),
            alignment: Alignment.center,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const SizedBox(height: 15),
              _BuildProfilePicButton(),
              const SizedBox(height: 35),
              _BuildUsername(),
              const SizedBox(height: 15),
              _BuildCourse(),
              const SizedBox(height: 15),
              _BuildBio(),
              const SizedBox(height: 15),
              const _BuildModule(),
              const SizedBox(height: 15),
              const _BuildTags(),
              const SizedBox(height: 15),
              _BuildSaveButton(),
            ]),
          ),
        );
      },
    );
  }
}

class _BuildProfilePicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dbPhotoUrl =
        context.read<ProfileFormBloc>().state.photoUrl.getOrElse(() => '');
    return Stack(
      children: <Widget>[
        CircleAvatar(
          maxRadius: 60,
          backgroundImage: NetworkImage(dbPhotoUrl),
          backgroundColor: Colors.white,
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF7BA5BB),
                shape: const CircleBorder(),
              ),
              onPressed: () async {
                final PickedFile? pickedFile = await imagePicker(context);
                File? pickedImage;
                if (pickedFile == null) {
                  FlushbarHelper.createError(message: 'No image picked')
                      .show(context);
                } else {
                  pickedImage = File(pickedFile.path);
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.photoChanged(pickedImage));
                }
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BuildUsername extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Username',
            ),
            autocorrect: false,
            onChanged: (value) {
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.usernameChanged(value));
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) => context
                .read<ProfileFormBloc>()
                .state
                .profile
                .username
                .value
                .fold(
                  (f) => f.maybeMap(
                      invalidUsernameFormat: (_) =>
                          'Only lowercase alphanumeric, . and _ characters allowed',
                      usernameTaken: (_) =>
                          'Username has been taken, please input another',
                      emptyString: (_) => 'Username cannot be empty',
                      exceedingLength: (_) =>
                          'Username too long, maximum of 12 characters only',
                      orElse: () => null),
                  (_) => null,
                ),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: 'Course',
          ),
          autocorrect: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            context
                .read<ProfileFormBloc>()
                .add(ProfileFormEvent.courseChanged(value));
          },
          validator: (_) =>
              context.read<ProfileFormBloc>().state.profile.course.value.fold(
                    (f) => f.maybeMap(
                      emptyString: (_) => 'Please input your course of study',
                      exceedingLength: (_) => 'Maximum 80 characters only',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class _BuildBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: 'Bio',
          ),
          autocorrect: false,
          onChanged: (value) {
            context
                .read<ProfileFormBloc>()
                .add(ProfileFormEvent.bioChanged(value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) =>
              context.read<ProfileFormBloc>().state.profile.course.value.fold(
                    (f) => f.maybeMap(
                      exceedingLength: (_) => 'Maximum 200 characters only',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class _BuildModule extends StatefulWidget {
  const _BuildModule({Key? key}) : super(key: key);

  @override
  __BuildModuleState createState() => __BuildModuleState();
}

class __BuildModuleState extends State<_BuildModule> {
  final textController = TextEditingController();

  void clearText() {
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Select modules of interest'),
        TypeAheadField(
          textFieldConfiguration:
              TextFieldConfiguration(controller: textController),
          direction: AxisDirection.up,
          suggestionsCallback: (value) async {
            context
                .read<ProfileFormBloc>()
                .add(ProfileFormEvent.searchedModule(value));

            return Future.delayed(const Duration(milliseconds: 500), () {
              return context
                  .read<ProfileFormBloc>()
                  .state
                  .moduleSuggestions
                  .getOrElse(() => []);
            });
          },
          itemBuilder: (context, suggestion) {
            return ListTile(title: Text(suggestion.toString()));
          },
          onSuggestionSelected: (String value) {
            if (context.read<ProfileFormBloc>().state.profile.modules.length >=
                8) {
              FlushbarHelper.createError(
                      message: 'Maximum number of modules is 8')
                  .show(context);
            } else if (context
                .read<ProfileFormBloc>()
                .state
                .profile
                .modules
                .contains(value)) {
              FlushbarHelper.createError(
                      message: 'Module has already been selected')
                  .show(context);
            } else {
              clearText();
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.addedModule(value));
            }
          },
        ),
      ],
    );
  }
}

class _BuildTags extends StatelessWidget {
  const _BuildTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
        builder: (context, state) {
      if (context.read<ProfileFormBloc>().state.profile.modules.isEmpty) {
        return Container();
      } else if (context.read<ProfileFormBloc>().state.refreshTags) {
        return Align(
          alignment: Alignment.topLeft,
          child: Wrap(
              spacing: 6.0,
              runSpacing: -5,
              children: List<Widget>.generate(
                  context.read<ProfileFormBloc>().state.profile.modules.length,
                  (int index) {
                final module = context
                    .read<ProfileFormBloc>()
                    .state
                    .profile
                    .modules[index];
                return Chip(
                    key: Key(index.toString()),
                    label: Text(module),
                    labelPadding: const EdgeInsets.only(left: 4),
                    deleteIcon: Icon(
                      Icons.close_rounded,
                      color: Colors.grey[700],
                      size: 18,
                    ),
                    deleteIconColor: Colors.transparent,
                    onDeleted: () {
                      context
                          .read<ProfileFormBloc>()
                          .add(ProfileFormEvent.removedModule(index));
                    });
              })),
        );
      }
      return Container();
    });
  }
}

class _BuildSaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width * 0.62,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF7BA5BB))),
              onPressed: () {
                context.read<ProfileFormBloc>().add(
                      const ProfileFormEvent.saved(),
                    );
              },
              child: const Text("Save Info")),
        );
      },
    );
  }
}
