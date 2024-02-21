import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/style_manager.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          height: cardSquareSide,
          width: cardSquareSide,
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Image.asset(devIconPath, width: 200),
                const SizedBox(height: 20),
                GradientText(myFullName,
                    style: StyleManager.myName, gradient: myGradient),
                const SizedBox(height: 40),
                Text(myTitle, style: StyleManager.myTitle)
              ],
            ),
          ),
        ));
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style = const TextStyle(fontSize: 24.0),
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
