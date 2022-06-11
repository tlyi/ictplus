import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:ictplus/presentation/profile/widgets/profile_elements.dart';

class OwnProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          heightFactor: 18,
          child: CircularProgressIndicator(),
        );
      } else {
        return state.failureOrUserProfile.fold(
            (f) => const Center(child: Text('ERROR retrieving profile')),
            (profile) =>
                ProfileElements(userProfile: profile, isOwnProfile: true));
      }
    });
  }
}
