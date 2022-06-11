import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';

class ResetPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.maybeMap(
                  serverError: (_) => 'No registered account',
                  orElse: () => 'Error',
                ),
              ).show(context);
            },
            (_) {
              context.replaceRoute(const SignInRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                  "A password reset link will be sent to your NUS Email."),
              const SizedBox(height: 20),
              _BuildIDField(),
              const SizedBox(height: 20),
              _BuildResetPasswordButton(),
            ],
          ),
        );
      },
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

class _BuildResetPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF7BA5BB))),
            onPressed: () {
              context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.resetPasswordPressed());
            },
            child: const Text('Reset Password'),
          ),
        );
      },
    );
  }
}
