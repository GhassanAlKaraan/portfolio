import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/title_card.dart';

import '../resources/color_manager.dart';
import '../resources/constants.dart';
import '../widgets/contact_row.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.background,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: scaffoldSizePadding),
          child: Column(
            children: [
              // Contact Button
              ContactRow(),
              SizedBox(height: 35),
              TitleCard()
            ],
          ),
        ));
  }
}