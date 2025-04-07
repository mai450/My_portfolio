import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/models/project_content.dart';
import 'package:portfolio/widgets/mobile_layout.dart';
import 'package:portfolio/widgets/project_view_body.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key, required this.projectContentModel});
  final ProjectContentModel projectContentModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: containerColor,
        body: MediaQuery.sizeOf(context).width > 900
            ? ProjectViewBody(
                projectContentModell: projectContentModel,
              )
            : MobileLayout());
  }
}
