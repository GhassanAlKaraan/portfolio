import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/retro/ghost1_f.dart';
import 'package:my_portfolio/widgets/retro/ghost2.dart';
import 'package:my_portfolio/widgets/retro/pacman.dart';
import 'package:my_portfolio/widgets/retro/space_bug.dart';

class RetroBanner2 extends StatelessWidget {
  const RetroBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return SizedBox(
      height: size * 3,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // change spacing type here
        children: [
          Container(),
          const Ghost2(),
          Container(),
          const Pacman(),
          Container(),
          const Ghost1F(),
          Container(),
          const Ghost2(),
          Container(),
          const SpaceBug(),
          Container(),
          const Ghost1F(),
        ],
      ),
    );
  }
}