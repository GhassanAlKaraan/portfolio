import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size/50),
                myIconLogo,
                size >= mobileWidth ? const SizedBox() :const SizedBox(height: 20),
                myNameText,
                size >= mobileWidth ? const SizedBox(height: 5) : const SizedBox(height: 30),
                myTitleText
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
