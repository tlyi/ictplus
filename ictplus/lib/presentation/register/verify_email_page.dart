import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/register/widgets/verify_email.dart';
import 'package:ictplus/application/auth/auth_bloc.dart';

class VerifyEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text('Verify Email',
              style: TextStyle(fontSize: 20.0, color: Colors.black)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
        ),
        body: VerifyEmail(),
      ),
    );
  }
}
