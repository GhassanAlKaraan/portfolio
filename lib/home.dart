import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/widgets/contact_button.dart';
import 'package:my_portfolio/widgets/job_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.background,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: scaffoldSizePadding),
          child: Column(
            children: [
              // Contact Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Padding(
                  padding: EdgeInsets.only(right: scaffoldSizePadding),
                  child: ContactButton(),
                )],
              ),
              SizedBox(height: 35),
              JobInfo(title: mmJobTitle, duration: mmDuration, imagePath: mmLogoPath,)
            ],
          ),
        ));
  }
}
