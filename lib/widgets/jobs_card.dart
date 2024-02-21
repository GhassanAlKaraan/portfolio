import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/style_manager.dart';
import 'package:my_portfolio/widgets/job_info.dart';

final List<Widget> jobs = [
  const JobInfo(
      title: gtsJobTitle, duration: gtsDuration, imagePath: gtsLogoPath),
  const JobInfo(title: mmJobTitle, duration: mmDuration, imagePath: mmLogoPath),
];

class JobsCard extends StatelessWidget {
  const JobsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          height: cardSquareSide,
          width: cardSquareSide,
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text("Jobs", style: StyleManager.cardTitle),
                const SizedBox(height: 30),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(cardPadding),
                      child: GridView.count(
                                        crossAxisCount: jobs.length,
                                        children: jobs,
                                      ),
                    )),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
