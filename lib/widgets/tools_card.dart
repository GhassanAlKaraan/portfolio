import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class ToolsCard extends StatelessWidget {
  const ToolsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                cardTitleText('Tools'),
                Expanded(
                    flex: size >= 500 ? 7 : 1,
                    child: const Padding(
                        padding: EdgeInsets.all(cardPadding + 20),
                        child: MyGridViewBuilder())),
                size >= 500
                    ? Expanded(flex: 5, child: Image.asset(colorfulLaptopPath))
                    : Container()
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
    final double size = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size >= 500 ? 2 : 3,
        mainAxisSpacing: 15.0, // Vertical spacing between items
        crossAxisSpacing: 10.0, // Horizontal spacing between items
        childAspectRatio:
            1.0, // Ensure square aspect ratio for consistent layout
      ),
      itemCount: toolsIcons.length,
      itemBuilder: (context, index) {
        final item = toolsIcons[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: item,
          ),
        );
      },
    );
  }
}
