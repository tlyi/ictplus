import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<SearchBar> createState() => _SearchBarState('');
}

class _SearchBarState extends State<SearchBar> {
  String input;

  _SearchBarState(this.input);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(input),
    );
  }
}
