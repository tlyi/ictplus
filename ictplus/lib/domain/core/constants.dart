import 'dart:math';

import 'package:flutter/material.dart';

String anonUserId = 'FBpgDK41f6TvCv5moedz';

///generates random number from 0 to 3 inclusive
int generateRandomNumber() {
  final randomNo = Random().nextInt(5);
  return randomNo;
}

const String LOGO =
    'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Flogo.png?alt=media&token=6513b2d4-2988-407c-9a89-0370798b806a';

const Color THEME_BLUE = Color(0xFF7BA5BB);

const Color THEME_LIGHT_BLUE = Color(0xFFA6C5D6);

const Color THEME_NOTIF_BG = Color(0xFFE44444);

const Color THEME_ORANGE = Color(0xFFFF7748);

const Color THEME_TRANSLUCENT_GRAY = Color(0x2DFAFAFA);

const Color THEME_GREEN = Color(0xFF81CF02);

const Color THEME_DARK_GREEN = Color(0xFF606B56);
