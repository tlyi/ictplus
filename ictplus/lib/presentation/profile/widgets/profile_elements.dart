import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart';
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
        WaveHeader(),
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
              ModulesOfInterest(
                  userProfile: userProfile, isOwnProfile: isOwnProfile),
              const SizedBox(height: 10),
              RecentPosts(userProfile: userProfile, isOwnProfile: isOwnProfile),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => context.pushRoute(FullScreenPhotoRoute(
              photoUrl: userProfile.photoUrl, tag: "profilePhoto")),
          child: Container(
            alignment: Alignment.center,
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: ClipOval(
              child: Hero(
                tag: "profilePhoto",
                child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 120,
                    width: 120,
                    imageUrl: userProfile.photoUrl,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator())),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          userProfile.username.getOrCrash(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          userProfile.course.getOrCrash().toLowerCase(),
          style: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 10),
        Flexible(
            child: Text(
          userProfile.bio.getOrCrash(),
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        )),
        if (userProfile.bio.getOrCrash() != '') const SizedBox(height: 10),
        if (isOwnProfile)
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            UpdateProfileButton(userProfile: userProfile),
            const Padding(padding: EdgeInsets.only(left: 5)),
            SearchUsersButton(userProfile: userProfile),
          ])
        else
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MessageProfileButton(userProfile: userProfile),
              const Padding(padding: EdgeInsets.only(left: 5)),
              FollowProfileButton(userProfile: userProfile),
            ],
          ),
        const SizedBox(height: 10),
        BlocBuilder<ProfileActorBloc, ProfileActorState>(
          builder: (context, state) {
            String numFollowers = 'Error';
            String numFollowing = 'Error';

            context.read<ProfileActorBloc>().state.failureOrFollowers.fold(
                  (f) => numFollowers = 'Error',
                  (list) => numFollowers = list.length.toString(),
                );

            context.read<ProfileActorBloc>().state.failureOrFollowing.fold(
                  (f) => numFollowing = 'Error',
                  (list) => numFollowing = list.length.toString(),
                );

            return IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await context.pushRoute(FollowersandFollowingRoute(
                          userProfile: userProfile,
                          isOwnProfile: isOwnProfile,
                          isFollowers: true));
                      isOwnProfile
                          ? context
                              .read<ProfileActorBloc>()
                              .add(const ProfileActorEvent.loadingOwnProfile())
                          : context.read<ProfileActorBloc>().add(
                              ProfileActorEvent.loadingOtherProfile(
                                  userProfile.uuid));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(numFollowers,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Followers'),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 60,
                    thickness: 0.7,
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await context.pushRoute(FollowersandFollowingRoute(
                          userProfile: userProfile,
                          isOwnProfile: isOwnProfile,
                          isFollowers: false));
                      isOwnProfile
                          ? context
                              .read<ProfileActorBloc>()
                              .add(const ProfileActorEvent.loadingOwnProfile())
                          : context.read<ProfileActorBloc>().add(
                              ProfileActorEvent.loadingOtherProfile(
                                  userProfile.uuid));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(numFollowing,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Following'),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
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
        context.pushRoute(const UpdateProfileRoute());
      },
      child: const Text('Update Profile',
          style: TextStyle(color: constants.THEME_BLUE)),
    );
  }
}

class SearchUsersButton extends StatelessWidget {
  final Profile userProfile;

  const SearchUsersButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String ownId = context.read<ProfileActorBloc>().state.ownId;
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
      onPressed: () async {
        await context.pushRoute(SearchUsersRoute(ownId: ownId));
        context
            .read<ProfileActorBloc>()
            .add(const ProfileActorEvent.loadingOwnProfile());
      },
      child: const Text('Find Friends',
          style: TextStyle(color: constants.THEME_BLUE)),
    );
  }
}

class MessageProfileButton extends StatelessWidget {
  final Profile userProfile;

  const MessageProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: constants.THEME_BLUE),
          ),
        ),
      ),
      onPressed: () {
        context.pushRoute(ConvoRoute(otherProfile: userProfile));
      },
      child:
          const Icon(Icons.chat_rounded, color: constants.THEME_BLUE, size: 20),
    );
  }
}

class FollowProfileButton extends StatelessWidget {
  final Profile userProfile;

  const FollowProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        bool isFollowing = context.read<ProfileActorBloc>().state.isFollowing;
        return TextButton(
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(
              left: 15,
              right: 15,
            )),
            backgroundColor: isFollowing
                ? MaterialStateProperty.all<Color>(Colors.white)
                : MaterialStateProperty.all<Color>(constants.THEME_BLUE),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                    color: isFollowing ? Colors.grey : constants.THEME_BLUE),
              ),
            ),
          ),
          onPressed: () {
            isFollowing
                ? context
                    .read<ProfileActorBloc>()
                    .add(const ProfileActorEvent.removedFollower())
                : context
                    .read<ProfileActorBloc>()
                    .add(const ProfileActorEvent.addedFollower());
          },
          child: isFollowing
              ? const Text('Unfollow', style: TextStyle(color: Colors.grey))
              : const Text('Follow', style: TextStyle(color: Colors.white)),
        );
      },
    );
  }
}

class ModulesOfInterest extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const ModulesOfInterest(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Modules Of Interest',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          if (userProfile.modules.isEmpty)
            const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text('No modules indicated yet :('))
          else
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Wrap(
                    spacing: 6.0,
                    runSpacing: -5,
                    children: List<Widget>.generate(userProfile.modules.length,
                        (int index) {
                      final module = userProfile.modules[index];
                      return ActionChip(
                          onPressed: () async {
                            await context.pushRoute(
                                ModuleForumRoute(moduleCode: module));
                            isOwnProfile
                                ? context.read<ProfileActorBloc>().add(
                                    const ProfileActorEvent.loadingOwnProfile())
                                : context.read<ProfileActorBloc>().add(
                                    ProfileActorEvent.loadingOtherProfile(
                                        userProfile.uuid));
                          },
                          label: Text(module));
                    })),
              ),
            )
        ],
      ),
    );
  }
}

class RecentPosts extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const RecentPosts(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ForumPost> forums = [];
    DataFailure? failure;
    context.read<ProfileActorBloc>().state.failureOrForumsPosted.fold(
          (f) => failure = f,
          (list) => forums = list,
        );
    return Align(
        alignment: Alignment.topLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          const Text('Recent Posts',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          if (failure != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
              child: Text(failure!.maybeMap(
                  unexpected: (_) => 'Unexpected Error',
                  orElse: () => 'Error')),
            )
          else if (forums.isEmpty)
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              child: Text('No forums posted yet :('),
            )
          else
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 13.0),
                itemCount: forums.length,
                itemBuilder: (context, index) {
                  final forum = forums[index];

                  if (isOwnProfile || (!isOwnProfile && !forum.isAnon)) {
                    return Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xFF7BA5BB), width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          title: Text(forum.title.getOrCrash()),
                          subtitle: Text(
                            forum.body.getOrCrash(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(getTime(forum.timestamp)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  if (forum.pollAdded)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Transform.rotate(
                                        angle: 90 * pi / 180,
                                        child: const Icon(
                                          Icons.poll_outlined,
                                          color: constants.THEME_BLUE,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  if (forum.isAnon)
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                      ),
                                      child: Icon(MdiIcons.incognito, size: 20),
                                    ),
                                ],
                              ),
                            ],
                          ),
                          onTap: () async {
                            await context.pushRoute(ForumRoute(
                                forumId: forum.forumId,
                                pollAdded: forum.pollAdded));
                            isOwnProfile
                                ? context.read<ProfileActorBloc>().add(
                                    const ProfileActorEvent.loadingOwnProfile())
                                : context.read<ProfileActorBloc>().add(
                                    ProfileActorEvent.loadingOtherProfile(
                                        userProfile.uuid));
                          },
                        ));
                  } else {
                    return Container();
                  }
                })
        ]));
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
