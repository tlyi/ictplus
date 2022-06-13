import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  const ProfileElements(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        //   WaveHeader(),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: ProfileHeader(
                    userProfile: userProfile, isOwnProfile: isOwnProfile),
              ),
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

  const ProfileHeader({
    Key? key,
    required this.userProfile,
    required this.isOwnProfile,
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
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            userProfile.rank,
            style: const TextStyle(
                fontFamily: 'Montserrat', fontSize: 15, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            userProfile.fullName,
            style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ]),
        const SizedBox(height: 10),
      ],
    );
  }
}

class UpdateProfileButton extends StatelessWidget {
  final Profile userProfile;

  const UpdateProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(
          left: 15,
          right: 15,
        )),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: constants.THEME_BLUE),
          ),
        ),
      ),
      onPressed: () {
        // context.pushRoute(const UpdateProfileRoute());
      },
      child: const Text('Update Profile',
          style: TextStyle(color: constants.THEME_BLUE)),
    );
  }
}

class WaveHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF3E90A4),
            constants.THEME_BLUE,
            Color(0xFFCEF2FA),
          ], begin: Alignment.topLeft, end: Alignment.topRight),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height * 0.60);

    final firstControlPoint = Offset(size.width / 4.3, size.height * 0.55);
    final firstEndPoint = Offset(size.width / 2.4, size.height * 0.40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint =
        Offset(size.width - (size.width / 3.5), size.height * 0.17);
    final secondEndPoint = Offset(size.width, size.height * 0.33);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
