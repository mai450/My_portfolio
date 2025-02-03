import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/tablet_layout_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.sizeOf(context).width < 570
          ? EdgeInsets.only(left: 50, right: 50, top: 60, bottom: 20)
          : EdgeInsets.only(left: 80, right: 80, top: 60, bottom: 20),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            CustomDrawer(),
            TabletLayoutBody(),
          ],
        ),
      ),
    );
  }
}
