import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/adaptive_layout.dart';
import 'package:portfolio/widgets/desktop_layout.dart';
import 'package:portfolio/widgets/mobile_layout.dart';
import 'package:portfolio/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
      desktopLayout: (context) => DesktopLayout(),
    );
  }
}
