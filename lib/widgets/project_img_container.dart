import 'package:flutter/material.dart';
import 'package:portfolio/models/project_content.dart';

class ProjectImageContainer extends StatelessWidget {
  const ProjectImageContainer({
    super.key,
    required this.projectContentModel,
    required this.height,
  });

  final ProjectContentModel projectContentModel;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          image: DecorationImage(
              image: AssetImage(
                projectContentModel.img,
              ),
              fit: BoxFit.fill)),
    );
  }
}
