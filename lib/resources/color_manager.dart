import 'package:flutter/material.dart';

class ColorManager {
  static Color background = HexColor.fromHex("#EEEAEA");
  static Color white = HexColor.fromHex("#FFFFFF");
  
static Color linkedin = HexColor.fromHex("#0075B1");
static Color github = HexColor.fromHex("#000000");

static Color disSwitch = HexColor.fromHex("#FFFFFF");
static Color enSwitch = HexColor.fromHex("#3A3B3C");
static Color bgSwitch = HexColor.fromHex("#0F0F10");


static Color jobDuration = HexColor.fromHex("#756E77");
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
