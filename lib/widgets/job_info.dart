import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class JobInfo extends StatefulWidget {
  const JobInfo(
      {super.key,
      required this.title,
      required this.duration,
      required this.imagePath});

  final String title;
  final String duration;
  final String imagePath;

  @override
  State<JobInfo> createState() => _JobInfoState();
}

class _JobInfoState extends State<JobInfo> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      // width: 100,
      child: Column(
        children: [
          jobJconLogo(widget.imagePath),
          jobTitleText(widget.title),
          const SizedBox(height: 8),
          jobDurationText(widget.duration)
        ],
      ),
    );
  }
}
