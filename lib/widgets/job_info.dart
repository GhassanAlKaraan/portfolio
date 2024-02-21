import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/style_manager.dart';

class JobInfo extends StatelessWidget {
  const JobInfo(
      {super.key,
      required this.title,
      required this.duration,
      required this.imagePath});

  final String title;
  final String duration;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      // width: 100,
      child: Column(
        children: [
          Image.asset(imagePath, height: 80, width: 120),
          Text(
            title,
            textAlign: TextAlign.center,
            style: StyleManager.jobTitle,
          ),
          const SizedBox(height: 8),
          Text(
            duration,
            style: StyleManager.jobDuration,
          )
        ],
      ),
    );
  }
}
