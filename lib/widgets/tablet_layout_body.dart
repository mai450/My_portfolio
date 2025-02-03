import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me_section.dart';
import 'package:portfolio/widgets/my_contact_section.dart';
import 'package:portfolio/widgets/project_sec.dart';

class TabletLayoutBody extends StatelessWidget {
  const TabletLayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (MediaQuery.sizeOf(context).width > 900) MyContactSec(),
        SizedBox(
          height: 24,
        ),
        if (MediaQuery.sizeOf(context).width > 900) AboutMeSec(),
        SizedBox(
          height: 24,
        ),
        if (MediaQuery.sizeOf(context).width > 900) ProjectsSec()
      ],
    );
  }
}
