import 'package:flutter/material.dart';
import 'package:hyper_effects/hyper_effects.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class ToolsCard extends StatelessWidget {
  const ToolsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Stack(children: [
          Container(
            //! Animation container
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: cardBorderRadius,
            ),
            clipBehavior: Clip.antiAlias,
            child: Transform.scale(
              scale: 2,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.grey.withOpacity(0.2),
                      Colors.grey.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ).pointerTransition(
              transitionBetweenBounds: false,
              resetOnExitBounds: false,
              (context, child, event) => child
                  .opacity(
                    event.isInsideBounds ? 1 : 0,
                  )
                  .animate(
                    trigger: event.isInsideBounds,
                    duration: const Duration(milliseconds: 150),
                  )
                  .translateXY(
                    event.valueOffset.dx / 2,
                    event.valueOffset.dy / 2,
                    fractional: true,
                  ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: cardBorderRadius),
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
                  size >= 500 && size <= 1000
                      ? Expanded(
                          flex: 5, child: Image.asset(colorfulLaptopPath))
                      : Container()
                  //const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ]));
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
        crossAxisCount: size >= 1000
            ? 4
            : size >= 500
                ? 2
                : 3,
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
