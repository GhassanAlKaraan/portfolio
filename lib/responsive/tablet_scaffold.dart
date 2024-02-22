import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/dbs_card.dart';
import 'package:my_portfolio/widgets/github_card.dart';
import 'package:my_portfolio/widgets/jobs_card.dart';
import 'package:my_portfolio/widgets/langs_card.dart';
import 'package:my_portfolio/widgets/linkedin_card.dart';
import 'package:my_portfolio/widgets/photo_card.dart';
import 'package:my_portfolio/widgets/projects_card.dart';
import 'package:my_portfolio/widgets/theme_switch_card.dart';
import 'package:my_portfolio/widgets/title_card.dart';
import 'package:my_portfolio/widgets/tools_card.dart';

import '../resources/color_manager.dart';
import '../resources/constants.dart';
import '../widgets/contact_row.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: specialScaffoldSizePadding2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Contact Button
                const ContactRow(),
                const SizedBox(height: 15),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: TitleCard())),
                SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: ProjectsCard())),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: PhotoCard())),
                const SizedBox(
                  
                    child: AspectRatio(aspectRatio: 1/1.2, child: JobsCard())),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: LangsCard())),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: DBsCard())),
                const SizedBox(
                  width: double.infinity,
                  child: AspectRatio(aspectRatio: 1, child: ToolsCard()),
                ),
                SizedBox(
                  // width: cardSquareSide,
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SizedBox(
                      width: cardSquareSide,
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        children: [
                          LinkedinCard(showArrow: false,),
                          GithubCard(showArrow: false,),
                          const ThemeSwitchCard()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}