import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: ColorManager.background, primary: ColorManager.primary),
    textTheme: const TextTheme(
      titleLarge: TextStyle(

      ),
      titleMedium: TextStyle(

      ),
      titleSmall: TextStyle(

      ),
    ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: ColorManager.backgroundDark,
      primary: ColorManager.primaryDark,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(

      ),
      titleMedium: TextStyle(

      ),
      titleSmall: TextStyle(
        
      ),
    ));
