import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/presentation/profile/widgets/profile_elements.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class OwnProfile extends StatelessWidget {
  final bool canUpdate;
  const OwnProfile({Key? key, this.canUpdate = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          heightFactor: 4,
          child: CircularProgressIndicator(color: constants.THEME_ORANGE),
        );
      } else {
        return state.failureOrUserProfile.fold(
          (f) => const Center(child: Text('ERROR retrieving profile')),
          (profile) => ProfileElements(
              userProfile: profile, isOwnProfile: true, canUpdate: canUpdate),
        );
      }
    });
  }
}
