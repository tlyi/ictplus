import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/forum/forum_form/forum_form_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/forum/forum_form/widgets/forum_form.dart';

class ForumFormPage extends StatelessWidget {
  const ForumFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForumFormBloc>(),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Create Post',
          canClose: true,
          notifications: false,
        ),
        body: DismissKeyboard(
            child: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: ForumForm(),
          ),
        )),
      ),
    );
  }
}
