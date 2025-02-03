import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/projects_list.dart';
import 'package:portfolio/widgets/project_content.dart';

class ProjectsSliderInDesktop extends StatefulWidget {
  const ProjectsSliderInDesktop({
    super.key,
  });

  @override
  State<ProjectsSliderInDesktop> createState() =>
      _ProjectsSliderInDesktopState();
}

class _ProjectsSliderInDesktopState extends State<ProjectsSliderInDesktop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < projectContentModel.length; i++)
            ProjectsContent(
              projectContentModel: projectContentModel[i],
            ),
        ],
      ),
    );
  }
}

class ProjectsListViewInMobile extends StatefulWidget {
  const ProjectsListViewInMobile({
    super.key,
  });

  @override
  State<ProjectsListViewInMobile> createState() =>
      _ProjectsListViewInMobileState();
}

class _ProjectsListViewInMobileState extends State<ProjectsListViewInMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (int i = 0; i < projectContentModel.length; i++)
            ProjectsContentInMobile(
              projectContentModel: projectContentModel[i],
            ),
        ],
      ),
    );
  }
}
