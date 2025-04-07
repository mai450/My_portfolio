import 'package:flutter/material.dart';
import 'package:portfolio/widgets/content_container.dart';
import 'package:portfolio/widgets/project_slider.dart';
import 'package:portfolio/widgets/title_of_section.dart';

class ProjectsSec extends StatelessWidget {
  const ProjectsSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleOfSection(text: 'Projects'),
        SizedBox(
          height: 12,
        ),
        ContentContainer(child: ProjectSlider2()),
      ],
    );
  }
}
