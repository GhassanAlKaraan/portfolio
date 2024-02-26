import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';

class Ghost2 extends StatelessWidget {
  const Ghost2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Image.asset(ghost2, height: 60, width: 60,),
    );
  }
}