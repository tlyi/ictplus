import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/presentation/core/get_time.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileElements extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  final bool canUpdate;

  const ProfileElements(
      {Key? key,
      required this.userProfile,
      required this.isOwnProfile,
      this.canUpdate = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: ProfileHeader(
                  userProfile: userProfile,
                  isOwnProfile: isOwnProfile,
                  canUpdate: canUpdate,
                ),
              ),
              if (!canUpdate)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                constants.THEME_ORANGE),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.create_outlined,
                                color: Colors.white),
                            const SizedBox(width: 10),
                            const Text("Update Information",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white)),
                          ],
                        )),
                  ),
                ),
              if (!canUpdate)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.settings_outlined,
                                color: Colors.white),
                            const SizedBox(width: 10),
                            const Text("Settings",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white)),
                          ],
                        )),
                  ),
                ),
              SizedBox(height: 150),
              if (!canUpdate)
                BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                  state.maybeMap(
                    unauthenticated: (_) =>
                        context.replaceRoute(const SignInRoute()),
                    orElse: () {},
                  );
                }, builder: (context, state) {
                  return Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          width: 0.5,
                                          color: constants.THEME_ORANGE)))),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext innerContext) =>
                                    AlertDialog(
                                      title: const Text('Sign Out?'),
                                      content: const Text(
                                          'Press OK to confirm sign out.'),
                                      actions: <Widget>[
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(innerContext),
                                            child: const Text('Cancel')),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(innerContext);
                                              context.read<AuthBloc>().add(
                                                  const AuthEvent.signedOut());
                                            },
                                            child: const Text('OK'))
                                      ],
                                    ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Log Out",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ],
                          )),
                    ),
                  );
                }),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  final bool canUpdate;

  const ProfileHeader({
    Key? key,
    required this.userProfile,
    required this.isOwnProfile,
    this.canUpdate = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => context.pushRoute(FullScreenPhotoRoute(
              photoUrl: userProfile.photoUrl, tag: "profilePhoto")),
          child: Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: ClipOval(
              child: Hero(
                tag: "profilePhoto",
                child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 70,
                    width: 70,
                    imageUrl: userProfile.photoUrl,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator())),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userProfile.rank,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    userProfile.fullName,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  if (canUpdate)
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: GestureDetector(
                          child:
                              Icon(Icons.edit, color: Colors.white, size: 20),
                          onTap: () {
                            context.pushRoute(ProfileRoute(canGoBack: true));
                          }),
                    ),
                ],
              ),
            ]),
        const SizedBox(height: 10),
      ],
    );
  }
}
