import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/desktop_scaffold.dart';
import 'package:my_portfolio/responsive/desktop_scaffold_2.dart';
import 'package:my_portfolio/responsive/mobile_scaffold.dart';
import 'package:my_portfolio/responsive/responsive_layout.dart';
import 'package:my_portfolio/responsive/tablet_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold2(),
        tabletScaffold: TabletScaffold());
  }
}
