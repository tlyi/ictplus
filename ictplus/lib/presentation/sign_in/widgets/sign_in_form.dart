import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombi: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              context.replaceRoute(const SplashRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _BuildSingPassButton(),
                  const SizedBox(height: 50),
                  _BuildIC(),
                  const SizedBox(height: 20),
                  _BuildPassword(),
                  _BuildLogInButton(),
                  _BuildForgotPassword(),
                  //   _BuildRegisterButton(),
                  if (state.isSubmitting) const LinearProgressIndicator(),
                ],
              ),
            ));
      },
    );
  }
}

class _BuildIC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: constants.THEME_TRANSLUCENT_GRAY,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
              labelText: 'Enter NRIC',
              prefixIcon: Icon(Icons.person, color: Colors.white),
            ),
            autocorrect: false,
            onChanged: (value) {
              final String emailString = '$value@u.nus.edu';
              context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(emailString));
            },
            validator: (_) =>
                context.read<SignInFormBloc>().state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid NRIC',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: constants.THEME_TRANSLUCENT_GRAY,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
              labelText: "Enter Password",
              prefixIcon: Icon(Icons.vpn_key, color: Colors.white),
            ),
            obscureText: true,
            autocorrect: false,
            onChanged: (value) => context
                .read<SignInFormBloc>()
                .add(SignInFormEvent.passwordChanged(value)),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildLogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(constants.THEME_ORANGE)),
              onPressed: () {
                context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                    );
              },
              child: const Text("Sign In")),
        );
      },
    );
  }
}

class _BuildForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: TextButton(
              onPressed: () {
                context.pushRoute(const ResetPasswordRoute());
              },
              child: Text('Forgot Password',
                  style: TextStyle(color: Colors.grey[700]))),
        );
      },
    );
  }
}

class _BuildRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextButton(
            onPressed: () {
              //  context.pushRoute(const RegisterRoute());
            },
            child: const Text('No account yet? Register Now!',
                style: TextStyle(
                  color: constants.THEME_BLUE,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.5,
                )));
      },
    );
  }
}

class _BuildSingPassButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width,
          height: 55,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(constants.THEME_ORANGE),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ))),
              onPressed: () {
                context.pushRoute(const SingPassRoute());
              },
              child: const Text("Continue with Singpass")),
        );
      },
    );
  }
}
