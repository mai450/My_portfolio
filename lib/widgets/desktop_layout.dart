import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/tablet_layout_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: CustomDrawer(),
          ),
        ),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 30, bottom: 20),
              child: SingleChildScrollView(child: TabletLayoutBody()),
            ))
      ],
    );
  }
}
