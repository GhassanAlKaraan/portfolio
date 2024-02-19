import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:my_portfolio/resources/style_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends StatefulWidget {
  const ContactButton({super.key});

  @override
  State<ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {
  bool isHover = false;

  final Uri _mailto = Uri.parse('mailto:ghass.karaan@gmail.com');

  Future<void> _launchEmail() async {
    if (!await launchUrl(_mailto)) {
      throw Exception('Could not launch $_mailto');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 90,
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(
          top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
      child: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        onTap: _launchEmail,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              //border: Border.all(width: 2, color: Colors.black),
              border: GradientBoxBorder(
                  width: 2,
                  gradient: LinearGradient(colors: [
                    Colors.pink[400]!,
                    Colors.yellow,
                  ])),
              color: Colors.white),
          child: Center(
            child: Row(
              children: [
                const SizedBox(width: 15),
                Text(
                  "Contact",
                  style: StyleManager.contactButton,
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),
        ),
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
      ),
    );
  }
}
