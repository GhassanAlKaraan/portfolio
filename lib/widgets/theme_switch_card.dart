import 'package:flutter/material.dart';
import 'package:hyper_effects/hyper_effects.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/theme_manager.dart';
import 'package:my_portfolio/resources/theme_provider.dart';
import 'package:my_portfolio/widgets/custom_switch.dart';
import 'package:provider/provider.dart';

class ThemeSwitchCard extends StatefulWidget {
  const ThemeSwitchCard({super.key});

  @override
  State<ThemeSwitchCard> createState() => _ThemeSwitchCardState();
}

class _ThemeSwitchCardState extends State<ThemeSwitchCard> {
  bool _isToggled = true;

  bool isLightTheme() {
    if (Provider.of<ThemeProvider>(context).themeData == lightTheme) {
      return true;
    } else {
      return false;
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _isToggled = isLightTheme() ? false : true;
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    _isToggled = isLightTheme() ? false : true;
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: Stack(children: [
        Container(
          //! Animation container
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: cardBorderRadius,
          ),
          clipBehavior: Clip.antiAlias,
          child: Transform.scale(
            scale: 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0),
                  ],
                ),
              ),
            ),
          ).pointerTransition(
            transitionBetweenBounds: false,
            resetOnExitBounds: false,
            (context, child, event) => child
                .opacity(
                  event.isInsideBounds ? 1 : 0,
                )
                .animate(
                  trigger: event.isInsideBounds,
                  duration: const Duration(milliseconds: 150),
                )
                .translateXY(
                  event.valueOffset.dx / 2,
                  event.valueOffset.dy / 2,
                  fractional: true,
                ),
          ),
        ),
        Container(
          width: cardSquareSide,
          height: cardSquareSide,
          decoration: BoxDecoration(
            borderRadius: cardBorderRadius,
            // color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: CustomSwitch(
              value: _isToggled,
              activeColor: ColorManager.bgSwitch,
              inactiveColor: ColorManager.background,
              thumbSize: size >= 500 ? 50 : 34,
              onToggle: (value) {
                setState(() {
                  _isToggled = value;
                });
              },
            ),
          ),
        ),
      ]),
    );
  }
}
