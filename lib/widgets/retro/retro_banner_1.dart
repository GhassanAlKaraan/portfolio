import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/retro/ghost1.dart';
import 'package:my_portfolio/widgets/retro/ghost2_f.dart';
import 'package:my_portfolio/widgets/retro/pacman.dart';
import 'package:my_portfolio/widgets/retro/space_bug.dart';

class RetroBanner1 extends StatelessWidget {
  const RetroBanner1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 100,
      height: size*3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // change spacing type here
        children: [
          const Ghost1(),
          Container(),
          const SpaceBug(),
          Container(),
          const Ghost2F(),
          Container(),
          const Ghost1(),
          Container(),
          const Pacman(),
          Container(),
          const Ghost2F(),
          Container()
        ],
      ),
    );
  }
}