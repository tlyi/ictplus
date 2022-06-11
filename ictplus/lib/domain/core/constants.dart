import 'dart:math';

import 'package:flutter/material.dart';

String anonUserId = 'FBpgDK41f6TvCv5moedz';

///generates random number from 0 to 3 inclusive
int generateRandomNumber() {
  final randomNo = Random().nextInt(5);
  return randomNo;
}

String randomPhotoUrl = DEFAULT_PHOTO_URLS[generateRandomNumber()];

const List<String> DEFAULT_PHOTO_URLS = [
  'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Fsnorlax.jpeg?alt=media&token=1e746389-2772-4bf0-8f14-b68eb6940a0c',
  'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Fcat.jpeg?alt=media&token=1d6e6dbb-6cef-49d2-946b-72da3f5704c5',
  'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Fbirb.jpeg?alt=media&token=20ff1b6b-0728-46ca-bc2a-d9ca84179db1',
  'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Ftotoro.jpeg?alt=media&token=4638fca9-9629-4270-80a6-850a851c1e6a',
  'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Ffrog.jpeg?alt=media&token=f2cdbe38-5a46-495c-b358-f8319de0ccaa',
];

const String ERROR_DP =
    'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/core%2F75870849-90FE-438D-8B8F-A5F78D248E13.png?alt=media&token=25cc64f2-343a-4bdd-97b9-35ba8238a3ac';

const String LOGO =
    'https://firebasestorage.googleapis.com/v0/b/friendlinus.appspot.com/o/profilePictures%2Fdefault%2Flogo.png?alt=media&token=6513b2d4-2988-407c-9a89-0370798b806a';

const Color THEME_BLUE = Color(0xFF7BA5BB);

const Color THEME_LIGHT_BLUE = Color(0xFFA6C5D6);

const Color THEME_NOTIF_BG = Color(0xFFE44444);

const Color THEME_ORANGE = Color(0xFFFF7748);

const Color THEME_TRANSLUCENT_GRAY = Color(0xBBFAFAFA);
