import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/widgets/custom_switch.dart';

class ThemeSwitchCard extends StatefulWidget {
  const ThemeSwitchCard({super.key});

  @override
  State<ThemeSwitchCard> createState() => _ThemeSwitchCardState();
}

class _ThemeSwitchCardState extends State<ThemeSwitchCard> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: Container(
        width: cardSquareSide,
        height: cardSquareSide,
        decoration: BoxDecoration(borderRadius: cardBorderRadius, color: ColorManager.white,),
        
        child: 
        Center(
      child: CustomSwitch(
        value: _isToggled,
        activeColor: ColorManager.bgSwitch,
        inactiveColor: ColorManager.background,
        thumbSize: 60,
        onToggle: (value) {
          setState(() {
            _isToggled = value;
          });
        },
      ),
        ),
      ),
    );
  }
}
