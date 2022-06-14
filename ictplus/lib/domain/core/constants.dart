import 'dart:math';

import 'package:flutter/material.dart';

String anonUserId = 'FBpgDK41f6TvCv5moedz';

///generates random number from 0 to 3 inclusive
int generateRandomNumber() {
  final randomNo = Random().nextInt(5);
  return randomNo;
}

const String LOGO =
    'https://firebasestorage.googleapis.com/v0/b/ictplus-8632f.appspot.com/o/ict_black_logo.png?alt=media&token=b4a4d4e9-7f06-4151-aa20-cf49b7663caa';

const Color THEME_BLUE = Color(0xFF7BA5BB);

const Color THEME_LIGHT_BLUE = Color(0xFFA6C5D6);

const Color THEME_NOTIF_BG = Color(0xFFE44444);

const Color THEME_ORANGE = Color(0xFFFF7748);

const Color THEME_TRANSLUCENT_ORANGE = Color(0x66FF7748);

const Color THEME_TRANSLUCENT_GRAY = Color(0x2DFAFAFA);

const Color THEME_GREEN = Color(0xFF81CF02);

const Color THEME_DARK_GREEN = Color(0xFF606B56);
