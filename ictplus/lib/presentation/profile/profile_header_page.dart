import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/profile/widgets/own_profile.dart';

class ProfileHeaderPage extends StatelessWidget {
  final bool canGoBack;
  final bool canUpdate;

  const ProfileHeaderPage(
      {Key? key, required this.canGoBack, this.canUpdate = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<ProfileActorBloc>()
          ..add(const ProfileActorEvent.loadingOwnProfile()),
      ),
    ], child: OwnProfile(canUpdate: true));
  }
}
