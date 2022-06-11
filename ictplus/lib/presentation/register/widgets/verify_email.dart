import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';
import 'package:ictplus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is Verified) {
        context.replaceRoute(const RegisterProfileRoute());

        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
      } else if (state is Unauthenticated) {
        context.replaceRoute(const SignInRoute());
      }
    }, builder: (context, state) {
      if (state is Unverified) {
        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
      }
      return Container(
        margin: const EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(Icons.email_rounded),
            const SizedBox(height: 15),
            const Text(
              "An email has been sent. Please click on the link in the email to verify your account!",
              textAlign: TextAlign.center,
            ),
            _BuildResendEmailButton(),
          ],
        ),
      );
    });
  }
}

class _BuildResendEmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF7BA5BB))),
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.sentEmailVerification());
              },
              child: const Text('Resend Email Verification')),
        );
      },
    );
  }
}
