import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/fonts_manager.dart';
import 'package:my_portfolio/widgets/job_info.dart';

class JobsCard extends StatefulWidget {
  const JobsCard({super.key});

  @override
  State<JobsCard> createState() => _JobsCardState();
}

class _JobsCardState extends State<JobsCard> {
  List<Widget> jobs = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      jobs = [
        const JobInfo(
            title: gtsJobTitle, duration: gtsDuration, imagePath: gtsLogoPath),
        const JobInfo(
            title: mmJobTitle, duration: mmDuration, imagePath: mmLogoPath),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                cardTitleText('Jobs'),
                const SizedBox(height: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [GTSjob(), SizedBox(width: 40,),MMjob()],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

class GTSjob extends StatefulWidget {
  const GTSjob({super.key});

  @override
  State<GTSjob> createState() => _GTSjobState();
}

class _GTSjobState extends State<GTSjob> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        jobJconLogo(gtsLogoPath),
        jobTitleText(gtsJobTitle),
        const SizedBox(height: 8),
        jobDurationText(gtsDuration)
      ],
    );
  }
}

class MMjob extends StatefulWidget {
  const MMjob({super.key});

  @override
  State<MMjob> createState() => _MMjobState();
}

class _MMjobState extends State<MMjob> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        jobJconLogo(mmLogoPath),
        jobTitleText(mmJobTitle),
        const SizedBox(height: 8),
        jobDurationText(mmDuration)
      ],
    );
  }
}
