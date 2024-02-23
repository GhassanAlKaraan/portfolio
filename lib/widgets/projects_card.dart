import 'package:flutter/material.dart';
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
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary, borderRadius: cardBorderRadius),
          child: Center(
            child: GestureDetector(
              onTap: _launchFigma,
              child: Stack(
                children: [Column(
                  children: [
                    const SizedBox(height: 20),
                    cardTitleText('Projects'),
                    Expanded(
                        child: Image.asset(projectsPath)),
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
        ));
  }
}
