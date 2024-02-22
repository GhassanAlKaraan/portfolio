import 'package:flutter/material.dart';
import '../resources/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.desktopScaffold,
      required this.tabletScaffold});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileScaffold;
        } else if (constraints.maxWidth < tabletWidth) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
