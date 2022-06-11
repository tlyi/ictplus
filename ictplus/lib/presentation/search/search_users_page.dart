import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ictplus/application/search/search_profile_bloc.dart';
import 'package:ictplus/injection.dart';
import 'package:ictplus/presentation/core/app_bar.dart';
import 'package:ictplus/presentation/core/dismiss_keyboard.dart';
import 'package:ictplus/presentation/core/nav_bar.dart';
import 'package:ictplus/presentation/search/widgets/search_bar.dart';

class SearchUsersPage extends StatelessWidget {
  final String ownId;
  const SearchUsersPage({Key? key, required this.ownId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchProfileBloc>(),
      child: DismissKeyboard(
        child: Scaffold(
          appBar: appBar(
              context: context,
              header: 'Search Users',
              canGoBack: true,
              notifications: false),
          bottomNavigationBar: const NavigationBar(),
          body: SearchBar(ownId: ownId),
        ),
      ),
    );
  }
}
