import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class FollowersandFollowingPage extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  final bool isFollowers;
  const FollowersandFollowingPage(
      {Key? key,
      required this.userProfile,
      required this.isOwnProfile,
      required this.isFollowers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileActorBloc>()
        ..add(isOwnProfile
            ? const ProfileActorEvent.loadingOwnProfile()
            : ProfileActorEvent.loadingOtherProfile(userProfile.uuid)),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: userProfile.username.getOrCrash(),
          canGoBack: true,
          canSignOut: true,
        ),
        body: FollowersAndFollowingView(
            userProfile: userProfile,
            isOwnProfile: isOwnProfile,
            isFollowers: isFollowers),
      ),
    );
  }
}

class FollowersAndFollowingView extends StatefulWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  final bool isFollowers;

  const FollowersAndFollowingView(
      {Key? key,
      required this.userProfile,
      required this.isOwnProfile,
      required this.isFollowers})
      : super(key: key);
  @override
  _FollowersAndFollowingViewState createState() =>
      _FollowersAndFollowingViewState();
}

class _FollowersAndFollowingViewState extends State<FollowersAndFollowingView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: widget.isFollowers ? 0 : 1, length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {});

      context.read<ProfileActorBloc>().add(const ProfileActorEvent.openStats());
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
            controller: _tabController,
            indicatorColor: constants.THEME_BLUE,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Followers'),
              Tab(text: 'Following'),
            ]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ClipRRect(
                  child: FollowersList(
                      userProfile: widget.userProfile,
                      isOwnProfile: widget.isOwnProfile)),
              ClipRRect(
                  child: FollowingList(
                      userProfile: widget.userProfile,
                      isOwnProfile: widget.isOwnProfile))
            ],
          ),
        ),
      ],
    );
  }
}

class FollowersList extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  const FollowersList(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
        builder: (context, state) {
      final String ownId = context.read<ProfileActorBloc>().state.ownId;
      List<Profile> followers = [];
      DataFailure? failure;
      context.read<ProfileActorBloc>().state.failureOrFollowers.fold(
            (f) => failure = f,
            (list) => followers = list,
          );

      return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (failure != null)
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(failure!.maybeMap(
                      unexpected: (_) => 'Unexpected Error', orElse: () => '')),
                ),
              )
            else if (followers.isEmpty)
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('No followers yet :('),
                ),
              )
            else
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  padding: const EdgeInsets.only(top: 15.0),
                  itemCount: followers.length > state.statsDisplay
                      ? state.statsDisplay + 1
                      : followers.length,
                  itemBuilder: (context, index) {
                    if (index == state.statsDisplay) {
                      context
                          .read<ProfileActorBloc>()
                          .add(const ProfileActorEvent.moreStats());
                      return Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 30,
                        width: 30,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    } else {
                      final Profile profile = followers[index];
                      return Card(
                        child: ListTile(
                            leading: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: ClipOval(
                                child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    height: 40,
                                    width: 40,
                                    imageUrl: profile.photoUrl,
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator())),
                              ),
                            ),
                            title: Text(profile.username.getOrCrash()),
                            onTap: () async {
                              ownId == profile.uuid
                                  ? await context
                                      .pushRoute(ProfileRoute(canGoBack: true))
                                  : await context.pushRoute(
                                      OtherProfileRoute(userProfile: profile));
                              isOwnProfile
                                  ? context.read<ProfileActorBloc>().add(
                                      const ProfileActorEvent
                                          .loadingOwnProfile())
                                  : context.read<ProfileActorBloc>().add(
                                      ProfileActorEvent.loadingOtherProfile(
                                          userProfile.uuid));
                            }),
                      );
                    }
                  }),
          ]);
    });
  }
}

class FollowingList extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  const FollowingList(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
        builder: (context, state) {
      final String ownId = context.read<ProfileActorBloc>().state.ownId;
      List<Profile> following = [];
      DataFailure? failure;
      context.read<ProfileActorBloc>().state.failureOrFollowing.fold(
            (f) => failure = f,
            (list) => following = list,
          );

      return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (failure != null)
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(failure!.maybeMap(
                      unexpected: (_) => 'Unexpected Error', orElse: () => '')),
                ),
              )
            else if (following.isEmpty)
              Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text('Not following anyone yet :('),
                    ),
                  ),
                  if (isOwnProfile)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () async {
                          await context
                              .pushRoute(SearchUsersRoute(ownId: ownId));
                          context
                              .read<ProfileActorBloc>()
                              .add(const ProfileActorEvent.loadingOwnProfile());
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Colors.grey[400],
                            child: const Icon(Icons.person_add_rounded),
                          ),
                        ),
                      ),
                    ),
                ],
              )
            else
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  padding: const EdgeInsets.only(top: 15.0),
                  itemCount: following.length > state.statsDisplay
                      ? state.statsDisplay + 1
                      : following.length,
                  itemBuilder: (context, index) {
                    if (index == state.statsDisplay) {
                      context
                          .read<ProfileActorBloc>()
                          .add(const ProfileActorEvent.moreStats());
                      return Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 30,
                        width: 30,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    } else {
                      final Profile profile = following[index];
                      return Card(
                        child: ListTile(
                            leading: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: ClipOval(
                                child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    height: 40,
                                    width: 40,
                                    imageUrl: profile.photoUrl,
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator())),
                              ),
                            ),
                            title: Text(profile.username.getOrCrash()),
                            onTap: () async {
                              ownId == profile.uuid
                                  ? await context
                                      .pushRoute(ProfileRoute(canGoBack: true))
                                  : await context.pushRoute(
                                      OtherProfileRoute(userProfile: profile));
                              isOwnProfile
                                  ? context.read<ProfileActorBloc>().add(
                                      const ProfileActorEvent
                                          .loadingOwnProfile())
                                  : context.read<ProfileActorBloc>().add(
                                      ProfileActorEvent.loadingOtherProfile(
                                          userProfile.uuid));
                            }),
                      );
                    }
                  }),
          ]);
    });
  }
}
