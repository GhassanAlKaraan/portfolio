import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/theme_manager.dart';
import 'package:my_portfolio/resources/theme_provider.dart';
import 'package:my_portfolio/widgets/custom_switch.dart';
import 'package:my_portfolio/widgets/jobs_card.dart';
import 'package:my_portfolio/widgets/photo_card.dart';
import 'package:my_portfolio/widgets/projects_card.dart';
import 'package:my_portfolio/widgets/title_card.dart';
import 'package:provider/provider.dart';
import '../resources/constants.dart';
import '../widgets/contact_row.dart';

class DesktopScaffold2 extends StatefulWidget {
  const DesktopScaffold2({super.key});

  @override
  State<DesktopScaffold2> createState() => _DesktopScaffold2State();
}

class _DesktopScaffold2State extends State<DesktopScaffold2> {
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
    double padding = mobileScaffoldSizePadding + extra / 5; // change the value /3 if desired
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
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

                AspectRatio( //! Father #1
                  aspectRatio: 3/2,
                  child: Row(
                    // == |
                    // ++ |
                    children: [
                      Expanded(
                        flex: 2,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Column(
                            children: [
                              //! name and title
                              const AspectRatio( aspectRatio: 2, child: TitleCard()),
                              
                              //! projects and mypic
                              AspectRatio(
                                aspectRatio: 2,
                                child: Row(children: [
                                    AspectRatio(aspectRatio: 1, child: ProjectsCard()), 
                                    const AspectRatio( aspectRatio: 1, child: PhotoCard()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //! Jobs
                      const Expanded(
                        flex: 1,
                        child: AspectRatio(aspectRatio: 0.5, child: JobsCard())),
                    ],
                  ),
                ),

                // const AspectRatio(
                //   aspectRatio: 1,
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: AspectRatio(
                //           aspectRatio: 1 / 2,
                //           child: Column(
                //             children: [
                //               AspectRatio(aspectRatio: 1, child: LangsCard()),
                //               AspectRatio(aspectRatio: 1, child: DBsCard()),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Expanded(
                //           child: AspectRatio(
                //               aspectRatio: 1 / 2, child: ToolsCard())),
                //     ],
                //   ),
                // ),

                // SizedBox(
                //   // width: cardSquareSide,
                //   width: double.infinity,
                //   child: AspectRatio(
                //     aspectRatio: 1,
                //     child: SizedBox(
                //       width: cardSquareSide,
                //       child: GridView(
                //         physics: const NeverScrollableScrollPhysics(),
                //         gridDelegate:
                //             const SliverGridDelegateWithFixedCrossAxisCount(
                //                 crossAxisCount: 2),
                //         children: [
                //           LinkedinCard(
                //             showArrow: true,
                //           ),
                //           GithubCard(
                //             showArrow: true,
                //           ),
                //           FlutterLebCard(
                //             showInfo: true,
                //           ),
                //           const ThemeSwitchCard(),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }
}
