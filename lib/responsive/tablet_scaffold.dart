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

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    double extra = size - 500;
    double padding = mobileScaffoldSizePadding + extra / 4;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding

              // mobileScaffoldSizePadding

              ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Contact Button
                const ContactRow(), //*
                const SizedBox(height: 15),
                const SizedBox(
                    width: double.infinity,
                    child: AspectRatio(aspectRatio: 2, child: TitleCard())), //*
                AspectRatio(
                  aspectRatio: 2,
                  child: Row(
                    children: [
                      AspectRatio(aspectRatio: 1, child: ProjectsCard()),
                      const AspectRatio(aspectRatio: 1, child: PhotoCard()),
                    ],
                  ),
                ), //*
                const SizedBox(
                    child: AspectRatio(aspectRatio: 2, child: JobsCard())), //*
                const AspectRatio(
                  aspectRatio: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1 / 2,
                          child: Column(
                            children: [
                              AspectRatio(aspectRatio: 1, child: LangsCard()),
                              AspectRatio(aspectRatio: 1, child: DBsCard()),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: AspectRatio(
                              aspectRatio: 1 / 2, child: ToolsCard())),
                    ],
                  ),
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
                          LinkedinCard(
                            showArrow: true,
                          ),
                          GithubCard(
                            showArrow: true,
                          ),
                          FlutterLebCard(
                            showInfo: true,
                          ),
                          const ThemeSwitchCard(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
