import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';

class Pacman extends StatelessWidget {
  const Pacman({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Image.asset(pacman, width: 50, height: 50),
    );
  }
}