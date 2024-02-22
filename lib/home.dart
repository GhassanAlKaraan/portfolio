import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/mobile_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const ResponsiveLayout(
    //     mobileScaffold: MobileScaffold(),
    //     desktopScaffold: DesktopScaffold(),
    //     tabletScaffold: TabletScaffold());
    return const MobileScaffold();
  }
}
