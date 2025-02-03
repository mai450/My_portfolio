import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_drawer.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 60,
        bottom: 20,
      ),
      child: CustomDrawer(),
    );
  }
}
