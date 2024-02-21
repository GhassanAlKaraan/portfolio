import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/style_manager.dart';

class JobInfo extends StatelessWidget {
  const JobInfo({super.key, required this.title, required this.duration, required this.imagePath});

  final String title;
  final String duration;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: StyleManager.jobTitle,
          ),
          const SizedBox(height: 15),
          Text(
            duration,
            style: StyleManager.jobDuration,
          )
        ],
      ),
    );
  }
}
