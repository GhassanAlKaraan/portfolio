import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/style_manager.dart';

class ToolsCard extends StatelessWidget {
  const ToolsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          height: cardSquareSide,
          width: cardSquareSide,
          decoration: BoxDecoration(
              color: ColorManager.white, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text("Tools", style: StyleManager.cardTitle),
                // const SizedBox(height: 10),
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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15.0, // Vertical spacing between items
        crossAxisSpacing: 10.0, // Horizontal spacing between items
        childAspectRatio: 1.0, // Ensure square aspect ratio for consistent layout
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