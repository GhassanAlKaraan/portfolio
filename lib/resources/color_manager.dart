import 'package:flutter/material.dart';

class ColorManager {
  static Color background = HexColor.fromHex("#EEEAEA");
  static Color white = HexColor.fromHex("#FFFFFF");
  

}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}