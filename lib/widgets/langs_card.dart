import 'package:flutter/material.dart';
import 'package:hyper_effects/hyper_effects.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class LangsCard extends StatelessWidget {
  const LangsCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  cardTitleText('Languages & FWs'),
                  // const SizedBox(height: 20),
                  const Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(cardPadding + 20),
                          child: MyGridViewBuilder())),
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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 4 items per row
        mainAxisSpacing: 15.0, // Vertical spacing between items
        crossAxisSpacing: 10.0, // Horizontal spacing between items
        childAspectRatio:
            1.0, // Ensure square aspect ratio for consistent layout
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
