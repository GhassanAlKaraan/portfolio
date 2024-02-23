import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: cardBorderRadius,
          image: const DecorationImage(
            image: AssetImage(myPicPath),
            fit: BoxFit.cover,
          ),
        ),
        // child: Expanded(
        //                 child: Image.asset(myPicPath)),
      ),
    );
  }
}
