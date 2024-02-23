import 'package:flutter/material.dart';

class ColorManager {

  // Theme Colors
  static Color background = HexColor.fromHex("#EEEAEA");
  static Color backgroundDark = HexColor.fromHex("#161616");


  static Color primary = HexColor.fromHex("#FFFFFF");
  static Color primaryDark = HexColor.fromHex("#212121");


  static Color titleLightMode = HexColor.fromHex("#000000");
  static Color titleDarkMode = HexColor.fromHex("#FFFFFF");



  static Color white = HexColor.fromHex("#FFFFFF");
  
static Color linkedin = HexColor.fromHex("#0075B1");
static Color github = HexColor.fromHex("#000000");

static Color hoverColor = const Color.fromARGB(197, 194, 194, 194);

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
