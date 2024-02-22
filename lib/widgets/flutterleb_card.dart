import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/fonts_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class FlutterLebCard extends StatelessWidget {
  FlutterLebCard({super.key, required this.showInfo});

  final bool showInfo;

  final Uri _instaPage = Uri.parse(instaPageUrl);

  Future<void> _launchInstaPage() async {
    if (!await launchUrl(_instaPage)) {
      throw Exception('Could not launch $_instaPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: GestureDetector(
        onTap: _launchInstaPage,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: cardBorderRadius,
                image: const DecorationImage(
                  image: NetworkImage(flutterLebLogoPath),
                  fit: BoxFit.cover,
                )),
          ),
          showInfo
              ? Positioned(
                  bottom: 20,
                  right: 30,
                  child: IconButton(
                    hoverColor: ColorManager.hoverColor,
                    icon: Icon(
                      Icons.arrow_forward,
                      color: ColorManager.black,
                      size: 30,
                    ),
                    onPressed: _launchInstaPage,
                  ))
              : Container(),
          showInfo
              ? Positioned(
                  left: 10,
                  top: 10,
                  child: FlutterLebText('Our Flutter Community'))
              : Container()
        ]),
      ),
    );
  }
}