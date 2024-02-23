import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/resources/layout_manager.dart';

class DBsCard extends StatelessWidget {
  const DBsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: Container(
          // height: cardSquareSide,
          // width: cardSquareSide,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary, borderRadius: cardBorderRadius),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                cardTitleText('Database & BaaS'),
                const SizedBox(height: 30),
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
        crossAxisCount: 3,
        mainAxisSpacing: 15.0, // Vertical spacing between items
        crossAxisSpacing: 10.0, // Horizontal spacing between items
        childAspectRatio: 1.0, // Ensure square aspect ratio for consistent layout
      ),
      itemCount: dbsAndServicesIcons.length,
      itemBuilder: (context, index) {
        final item = dbsAndServicesIcons[index];
        return Center(
          child: item,
        );
      },
    );
  }
}