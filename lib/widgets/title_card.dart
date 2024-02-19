import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    double mySize = MediaQuery.of(context).size.width * (0.20);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: mySize,
        width: mySize*2,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Center(child: Text("data"),),
      ),
    );
  }
}