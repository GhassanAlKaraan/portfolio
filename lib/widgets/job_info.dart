import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/fonts_manager.dart';

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
          jobJconLogo(imagePath),
          jobTitleText(title),
          const SizedBox(height: 8),
          jobDurationText(duration)
        ],
      ),
    );
  }
}
