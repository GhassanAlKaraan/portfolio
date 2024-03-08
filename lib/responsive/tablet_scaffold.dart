import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/theme_manager.dart';
import 'package:my_portfolio/resources/theme_provider.dart';
import 'package:my_portfolio/widgets/custom_switch.dart';
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
import 'package:provider/provider.dart';
import '../resources/constants.dart';
import '../widgets/contact_row.dart';


class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {

  bool _isToggled = true;

  bool isLightTheme() {
    if (Provider.of<ThemeProvider>(context).themeData == lightTheme) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    _isToggled = isLightTheme() ? false : true;
    final size = MediaQuery.of(context).size.width;
    double extra = size - 500;
    double padding = mobileScaffoldSizePadding + extra / 4;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
            pattern1,
            repeat: ImageRepeat.repeat,
            colorBlendMode: BlendMode.plus,
          )),
            Positioned.fill(
              child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  children: [
                    // Contact Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: CustomSwitch(
                            value: _isToggled,
                            activeColor: ColorManager.bgSwitch,
                            inactiveColor: ColorManager.inactiveSwitch,
                            thumbSize: 36,
                            onToggle: (value) {
                              setState(() {
                                _isToggled = value;
                              });
                            },
                          ),
                        ),
                        const ContactRow(),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                        width: double.infinity,
                        child: AspectRatio(aspectRatio: 2, child: TitleCard())),
                    AspectRatio(
                      aspectRatio: 2,
                      child: Row(
                        children: [
                          AspectRatio(aspectRatio: 1, child: ProjectsCard()),
                          const AspectRatio(aspectRatio: 1, child: PhotoCard()),
                        ],
                      ),
                    ),
                    const SizedBox(
                        child: AspectRatio(aspectRatio: 2, child: JobsCard())),
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
                            physics: const NeverScrollableScrollPhysics(),
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
                        ),
            ),]
        ));
  }
}
