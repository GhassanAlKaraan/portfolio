import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/dbs_card.dart';
import 'package:my_portfolio/widgets/flutterleb_card.dart';
import 'package:my_portfolio/widgets/github_card.dart';
import 'package:my_portfolio/widgets/jobs_card.dart';
import 'package:my_portfolio/widgets/langs_card.dart';
import 'package:my_portfolio/widgets/linkedin_card.dart';
import 'package:my_portfolio/widgets/photo_card.dart';
import 'package:my_portfolio/widgets/projects_card.dart';
import 'package:my_portfolio/widgets/theme_switch_card.dart';
import 'package:my_portfolio/widgets/title_card.dart';
import 'package:my_portfolio/widgets/tools_card.dart';
import '../resources/constants.dart';
import '../widgets/contact_row.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: mobileScaffoldSizePadding),
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
                    child:
                        AspectRatio(aspectRatio: 1, child: ProjectsCard())),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 1, child: PhotoCard())),
                const SizedBox(
                    child:
                        AspectRatio(aspectRatio: 1 / 1.3, child: JobsCard())),
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
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        children: [
                          LinkedinCard(
                            showArrow: false,
                          ),
                          GithubCard(
                            showArrow: false,
                          ),
                          FlutterLebCard(
                            showInfo: false,
                          ),
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
