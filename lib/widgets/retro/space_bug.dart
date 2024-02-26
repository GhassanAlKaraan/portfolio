import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';

class SpaceBug extends StatelessWidget {
  const SpaceBug({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Image.asset(spaceBug, width: 50, height: 50),
    );
  }
}