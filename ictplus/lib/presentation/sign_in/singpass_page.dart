import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';

class SingPassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar(
          context: context,
          header: 'Coming Soon',
          canGoBack: true,
          showLogo: true,
          notifications: false,
        ),
        body: Container(
            margin:
                const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 90.0),
            alignment: Alignment.center,
            child: Text('Feature coming soon! \n',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 20))),
      ),
    );
  }
}
