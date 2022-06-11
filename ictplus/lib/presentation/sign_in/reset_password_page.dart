import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/sign_in/widgets/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: DismissKeyboard(
        child: Scaffold(
          appBar: appBar(
            context: context,
            header: 'Reset Password',
            canGoBack: true,
            notifications: false,
          ),
          body: Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
            alignment: Alignment.topCenter,
            child: ResetPasswordForm(),
          ),
        ),
      ),
    );
  }
}
