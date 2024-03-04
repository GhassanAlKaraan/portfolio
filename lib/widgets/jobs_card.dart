import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class JobsCard extends StatefulWidget {
  const JobsCard({super.key});

  @override
  State<JobsCard> createState() => _JobsCardState();
}

class _JobsCardState extends State<JobsCard> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                //! aesthetics
                if (size >= 500 && size <= 555)
                  const SizedBox(height: 0)
                else
                  const SizedBox(height: 20),
                cardTitleText('Jobs'),
                size < mobileWidth
                    ? const SizedBox(height: 10)
                    : const SizedBox(),
                //!    
                if(size < mobileWidth )
                    const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [GTSjob(), SizedBox(width: 40), MMjob()],
                      )
                else if (size >=tabletWidth)
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [SizedBox(height: 60),GTSjob(), SizedBox(height: 40), MMjob()],
                      )
                else const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [GTSjob(), SizedBox(width: 80), MMjob()],
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
        jobIconLogo(gtsLogoPath),
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
        jobIconLogo(mmLogoPath),
        jobTitleText(mmJobTitle),
        const SizedBox(height: 8),
        jobDurationText(mmDuration)
      ],
    );
  }
}
