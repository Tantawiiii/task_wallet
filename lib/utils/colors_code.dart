


import 'package:flutter/material.dart';

class ColorsCode {

  static Color  blackColor = hexToColor('#000000');
  static Color  blackColor100 = hexToColor('#1E1E1E');
  static Color  blackColor700 = hexToColor('#373737');
  static Color  whiteColor = hexToColor('#FFFFFF');
  static Color  whiteColor100 = hexToColor('#F1F4FF');
  static Color  whiteColor200 = hexToColor('#EDEEF5');
  static Color  whiteColor300 = hexToColor('#E3E3E3');
  static Color  whiteBack = hexToColor('#F2F2F2');
  static Color  blue500 = hexToColor('#081B35');
  static Color  RED = hexToColor('#FF2B2B');
  static Color  BLUE = hexToColor('#5471F1');
  static Color  YellowCard = hexToColor('#FBB03B');
  static Color  RedCard = hexToColor('#D85F5F');
  static Color  PurpleCard = hexToColor('#B13BFB');
  static Color  grayOff = hexToColor('#4E4E4E');
  static Color  grayOn = hexToColor('#A2A2A2');




}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}