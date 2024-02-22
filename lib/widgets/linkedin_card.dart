import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedinCard extends StatelessWidget {
  LinkedinCard({super.key});

  final Uri _linkedin = Uri.parse(linkedinUrl);

  Future<void> _launchLinkedin() async {
    if (!await launchUrl(_linkedin)) {
      throw Exception('Could not launch $_linkedin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: GestureDetector(
        onTap: _launchLinkedin,
        child: Stack(
          children: [Container(
            width: cardSquareSide,
            height: cardSquareSide,
            decoration: BoxDecoration(
              color: ColorManager.linkedin,
              borderRadius: cardBorderRadius,
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: socialsIconBorderRadius
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                                linkedinIconPath,
                                width: linkedinIconSize,
                              ),
                  )),
            ),
          ),
          
          Positioned(
                bottom: 30,
                right: 30,
                child: IconButton(
                  hoverColor: ColorManager.hoverColor,
                  icon: Icon(
                    
                    Icons.arrow_forward,
                    color: ColorManager.white,
                    size: 30,
                  ),
                  onPressed: _launchLinkedin,
                )),]
        ),
      ),
    );
  }
}
