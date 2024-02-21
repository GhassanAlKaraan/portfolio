import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubCard extends StatelessWidget {
  GithubCard({super.key});


  final Uri _github = Uri.parse(githubUrl);

  Future<void> _launchGithub() async {
    if (!await launchUrl(_github)) {
      throw Exception('Could not launch $_github');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: GestureDetector(
        onTap: _launchGithub,
        child: Stack(children: [
          Container(
            width: cardSquareSide,
            height: cardSquareSide,
            decoration: BoxDecoration(
              color: ColorManager.github,
              borderRadius: cardBorderRadius,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  githubIconPath,
                  width: 180,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 30,
              right: 30,
              child: IconButton(
                hoverColor: const Color.fromARGB(197, 85, 84, 84),
                icon: Icon(
                  
                  Icons.arrow_forward,
                  color: ColorManager.white,
                  size: 30,
                ),
                onPressed: _launchGithub,
              ))
        ]),
      ),
    );
  }
}
