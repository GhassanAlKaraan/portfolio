// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hyper_effects/hyper_effects.dart';
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
        child: Stack(children: [
          Container(
            //! Animation container
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: cardBorderRadius,
            ),
            clipBehavior: Clip.antiAlias,
            child: Transform.scale(
              scale: 2,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.grey.withOpacity(0.2),
                      Colors.grey.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ).pointerTransition(
              transitionBetweenBounds: false,
              resetOnExitBounds: false,
              (context, child, event) => child
                  .opacity(
                    event.isInsideBounds ? 1 : 0,
                  )
                  .animate(
                    trigger: event.isInsideBounds,
                    duration: const Duration(milliseconds: 150),
                  )
                  .translateXY(
                    event.valueOffset.dx / 2,
                    event.valueOffset.dy / 2,
                    fractional: true,
                  ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: cardBorderRadius),
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

                  if (size < mobileWidth) // Mobile
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [GTSjob(), const SizedBox(width: 40), MMjob()],
                    )
                  else if (size >= tabletWidth) // Desktop
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        GTSjob(isDesktop: true),
                        const SizedBox(height: 10),
                        MMjob(isDesktop: true)
                      ],
                    )
                  else
                    Row(
                      // Tablet
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [GTSjob(), const SizedBox(width: 80), MMjob()],
                    ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ]));
  }
}

class GTSjob extends StatefulWidget {
  GTSjob({super.key, this.isDesktop});

  bool? isDesktop;

  @override
  State<GTSjob> createState() => _GTSjobState();
}

class _GTSjobState extends State<GTSjob> {
  @override
  Widget build(BuildContext context) {
    if (widget.isDesktop != null) {
      return Column(
        children: [
          jobIconLogoDesktop(gtsLogoPath),
          jobTitleTextDesktop(gtsJobTitle),
          const SizedBox(height: 8),
          jobDurationTextDesktop(gtsDuration)
        ],
      );
    } else {
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
}

class MMjob extends StatefulWidget {
  MMjob({super.key, this.isDesktop});

  bool? isDesktop;

  @override
  State<MMjob> createState() => _MMjobState();
}

class _MMjobState extends State<MMjob> {
  @override
  Widget build(BuildContext context) {
    if (widget.isDesktop != null) {
      return Column(
        children: [
          jobIconLogoDesktop(mmLogoPath),
          jobTitleTextDesktop(mmJobTitle),
          const SizedBox(height: 8),
          jobDurationTextDesktop(mmDuration)
        ],
      );
    } else {
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
}
