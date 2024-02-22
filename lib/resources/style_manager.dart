import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';

class StyleManager {
  static TextStyle contactButton =
      const TextStyle(color: Colors.black, fontFamily: "Anta", fontSize: 16);

  static TextStyle myTitle =
      const TextStyle(color: Colors.black, fontFamily: "Anta", fontSize: 22);
      
  static TextStyle myName =
      const TextStyle(color: Colors.black, fontFamily: "Anta", fontSize: 30);

  static TextStyle cardTitle =
      const TextStyle(color: Colors.black, fontFamily: "Anta", fontSize: 30);

  static TextStyle jobTitle = const TextStyle(
      color: Colors.black,
      fontFamily: "Anta",
      fontWeight: FontWeight.bold,
      fontSize: 12);
  static TextStyle jobDuration = TextStyle(
      color: ColorManager.jobDuration,
      // fontFamily: "Anta",
      fontWeight: FontWeight.bold,
      fontSize: 10);
}
