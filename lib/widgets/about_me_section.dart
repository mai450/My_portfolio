import 'package:flutter/material.dart';
import 'package:portfolio/widgets/content_container.dart';
import 'package:portfolio/widgets/title_of_section.dart';

class AboutMeSec extends StatelessWidget {
  const AboutMeSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleOfSection(text: 'About Me'),
        SizedBox(
          height: 12,
        ),
        ContentContainer(
            child: Text(
          'A dedicated Flutter Developer with 1+ year of hands-on experience in building cross-platform mobile applications. Proven ability to create high-performance,scalable applications and eager to leverage skills in a collaborative environment to develop innovative solutions.',
          style: TextStyle(fontSize: 16),
        )),
      ],
    );
  }
}
