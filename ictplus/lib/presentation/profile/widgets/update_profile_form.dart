import 'dart:io';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tagging/flutter_tagging.dart';
import 'package:ictplus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/presentation/core/image_picker.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfileForm extends StatelessWidget {
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
                  context.replaceRoute(ProfileRoute(canGoBack: false));
                }));
        state.photoUrl.fold(
            (f) => FlushbarHelper.createError(
                message: 'Error uploading photo to database, try again'),
            (r) => null);
      },
      builder: (context, state) {
        if (state.isLoading) {
          context
              .read<ProfileFormBloc>()
              .add(const ProfileFormEvent.getProfile());
          return const Center(
              heightFactor: 18, child: CircularProgressIndicator());
        } else {
          Profile userProfile = context
              .read<ProfileFormBloc>()
              .state
              .currentProfile
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return Profile.empty();
          });
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _BuildProfilePicButton(userProfile: userProfile),
                  const SizedBox(height: 20),
                  _BuildUsername(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildCourse(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildBio(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildModule(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildTags(userProfile: userProfile),
                  _BuildSaveButton(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

class _BuildProfilePicButton extends StatelessWidget {
  final Profile userProfile;

  const _BuildProfilePicButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String prevPhotoUrl =
        context.read<ProfileFormBloc>().state.photoUrl.getOrElse(() => '');
    return Stack(
      children: <Widget>[
        CircleAvatar(
          maxRadius: 60,
          backgroundImage: NetworkImage(prevPhotoUrl),
          backgroundColor: Colors.transparent,
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
  final Profile userProfile;

  const _BuildUsername({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: userProfile.username.getOrCrash(),
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
        validator: (_) =>
            context.read<ProfileFormBloc>().state.profile.username.value.fold(
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
  }
}

class _BuildCourse extends StatelessWidget {
  final Profile userProfile;

  const _BuildCourse({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: userProfile.course.getOrCrash(),
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
                  exceedingLength: (_) =>
                      'Course name is too long, maximum of 80 characters only',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}

class _BuildBio extends StatelessWidget {
  final Profile userProfile;

  const _BuildBio({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: userProfile.bio.getOrCrash(),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Bio',
      ),
      autocorrect: false,
      onChanged: (value) {
        context.read<ProfileFormBloc>().add(ProfileFormEvent.bioChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) =>
          context.read<ProfileFormBloc>().state.profile.bio.value.fold(
                (f) => f.maybeMap(
                  exceedingLength: (_) => 'Maximum 80 characters only',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}

class _BuildModule extends StatefulWidget {
  final Profile userProfile;

  const _BuildModule({Key? key, required this.userProfile}) : super(key: key);

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
  final Profile userProfile;

  const _BuildTags({Key? key, required this.userProfile}) : super(key: key);

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
              child: const Text("Save & Update Profile")),
        );
      },
    );
  }
}
