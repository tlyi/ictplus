import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: DismissKeyboard(
          child: Scaffold(
            appBar: appBar(
              context: context,
              header: 'Create an Account',
              canGoBack: true,
              notifications: false,
            ),
            body: SingleChildScrollView(
              child: RegisterForm(),
            ),
          ),
        ));
  }
}
