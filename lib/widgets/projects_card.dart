import 'package:flutter/material.dart';
import 'package:hyper_effects/hyper_effects.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsCard extends StatelessWidget {
  ProjectsCard({super.key});

  final Uri _figma = Uri.parse(figmaUrl);

  Future<void> _launchFigma() async {
    if (!await launchUrl(_figma)) {
      throw Exception('Could not launch $_figma');
    }
  }

  @override
  Widget build(BuildContext context) {
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
              child: GestureDetector(
                onTap: _launchFigma,
                child: Stack(children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      cardTitleText('Projects'),
                      Expanded(child: Image.asset(projectsPath)),
                    ],
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: IconButton(
                        hoverColor: ColorManager.hoverColor,
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                        onPressed: _launchFigma,
                      ))
                ]),
              ),
            ),
          ),
        ]));
  }
}
