import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:my_portfolio/resources/constants.dart';

class Ghost2F extends StatelessWidget {
  const Ghost2F({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: Image.asset(ghost2, height: 60, width: 60,)),
    );
  }
}