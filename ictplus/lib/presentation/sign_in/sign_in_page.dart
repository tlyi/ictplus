import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:ictplus/injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: DismissKeyboard(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black,
                    ],
                    stops: [
                      0.0,
                      0.8,
                    ])),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(children: <Widget>[
                Container(
                  color: Colors.transparent,
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 80),
                        Image.asset(
                          'images/ict_white_logo.png',
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                        ),
                        const Padding(padding: const EdgeInsets.only(top: 140)),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: SignInForm(),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
