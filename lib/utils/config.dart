import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config {
  static TextStyle robotoTextStyle = TextStyle(
      fontFamily: GoogleFonts.roboto().fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 12);

  static MaterialStateProperty<Color> materialTransparentColor =
      MaterialStateProperty.all<Color>(Colors.transparent);

  static Color blackColor = Colors.black;
  static Color tabBarActiveColor = const Color(0xFFed991a);
  static Color unSelectedColor = const Color(0xFF505050);
  static Color lightYellow = const Color(0xFFe8e09e);
  static Color lightGrey = const Color(0xFFd6d6d6);
  static Color lightPink = const Color(0xFFE8DEF2);
  static Color lightPeach = const Color(0xFFf0e6a0);
  static Color whiteColor = Colors.white;
  static Color logoColor = const Color(0xFF64288c);
  static Color colorAfterScroll = const Color(0xFF108094);
  static Color color1 = const Color(0xFF4f377b);
  static Color color2 = const Color(0xFF4f4684);
  static Color color3 = const Color(0xFF4e6091);
  static Color color4 = const Color(0xFF4b6592);
  static Color color5 = const Color(0xFF32527c);
  static Color color6 = const Color(0xFF2b5a7e);
  static Color color7 = const Color(0xFF205877);
  static Color color8 = const Color(0xFF20617d);

  //-------------------asset image-------------------
  static const String flowerImage = 'assets/images.jpeg';
  static const String logo =
      'assets/71579-reused-symbol-recycling-images-paper-recycle.png';
}
