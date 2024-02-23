import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class LangsCard extends StatelessWidget {
  const LangsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                cardTitleText('Languages & FWs'),
                // const SizedBox(height: 20),
                const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(cardPadding+20),
                      child: MyGridViewBuilder()
                    )),
                //const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}


class MyGridViewBuilder extends StatelessWidget {
  const MyGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 4 items per row
        mainAxisSpacing: 15.0, // Vertical spacing between items
        crossAxisSpacing: 10.0, // Horizontal spacing between items
        childAspectRatio: 1.0, // Ensure square aspect ratio for consistent layout
      ),
      itemCount: langsAndFWsIcons.length,
      itemBuilder: (context, index) {
        final item = langsAndFWsIcons[index];
        return Container(
          // color: Colors.grey[200], // Example background color
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: item,
          ),
        );
      },
    );
  }
}