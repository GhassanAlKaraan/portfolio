import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/widgets/photo_card.dart';
import 'package:my_portfolio/widgets/contact_button.dart';
import 'package:my_portfolio/widgets/title_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.background,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            children: [
              // Contact Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ContactButton()],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  TitleCard(),
                  PhotoCard(),
                ],
              )
            ],
          ),
        ));
  }
}
