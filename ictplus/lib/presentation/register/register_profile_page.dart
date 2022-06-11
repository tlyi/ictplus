import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/register/widgets/register_profile_form.dart';

class RegisterProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileFormBloc>(),
      child: DismissKeyboard(
        child: Scaffold(
          appBar: appBar(
              context: context,
              header: 'Profile Registration',
              notifications: false),
          body: SingleChildScrollView(
            child: RegisterProfileForm(),
          ),
        ),
      ),
    );
  }
}
