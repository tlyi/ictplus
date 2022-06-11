import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class RegisterForm extends StatelessWidget {
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
            context
                .read<AuthBloc>()
                .add(const AuthEvent.sentEmailVerification());
            context
                .read<AuthBloc>()
                .add(const AuthEvent.verifiedCheckRequested());

            context.replaceRoute(const VerifyEmailRoute());
          },
        ),
      );
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Container(
          margin: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            _BuildVerifyMessage(),
            _BuildIDField(),
            const SizedBox(height: 15),
            _BuildPasswordField(),
            const SizedBox(height: 15),
            _BuildReEnterPasswordField(),
            _BuildRegisterButton()
          ]),
        ),
      );
    });
  }
}

class _BuildVerifyMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Sign up now with your NUSNET ID!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Text("An authentication link will be sent to your NUS Email."),
        ],
      ),
    );
  }
}

class _BuildIDField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'e.g. e1234567',
        labelText: 'NUSNET ID',
      ),
      autocorrect: false,
      onChanged: (value) {
        final String emailString = '$value@u.nus.edu';
        context
            .read<SignInFormBloc>()
            .add(SignInFormEvent.emailChanged(emailString));
      },
      autovalidateMode: context.read<SignInFormBloc>().state.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      validator: (_) =>
          context.read<SignInFormBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) =>
                      'Invalid NUSNET ID, please use format eXXXXXXX',
                  orElse: () => null,
                ),
                (_) => null,
              ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r"\s\b|\b\s")) //Prevents whitespace
      ],
    );
  }
}

class _BuildPasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Password',
      ),
      obscureText: true,
      autocorrect: false,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value)),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) =>
          context.read<SignInFormBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                    shortPassword: (_) => 'Password too short',
                    orElse: () => null),
                (_) => null,
              ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r"\s\b|\b\s")) //Prevents whitespace
      ],
    );
  }
}

class _BuildReEnterPasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Re-enter Password',
      ),
      obscureText: true,
      autocorrect: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordReChanged(value)),
      validator: (_) {
        if (context.read<SignInFormBloc>().state.password.value !=
            context.read<SignInFormBloc>().state.passwordRe.value) {
          return 'Passwords do not match';
        } else {
          return null;
        }
      },
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r"\s\b|\b\s")) //Prevents whitespace
      ],
    );
  }
}

class _BuildRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF7BA5BB))),
          onPressed: () {
            if (context.read<SignInFormBloc>().state.password.value ==
                context.read<SignInFormBloc>().state.passwordRe.value) {
              context.read<SignInFormBloc>().add(
                    const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                  );
            }
          },
          child: const Text('Sign Up Now')),
    );
  }
}
