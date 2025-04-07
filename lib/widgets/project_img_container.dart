import 'package:flutter/material.dart';
import 'package:portfolio/models/project_content.dart';

class ProjectImageContainer extends StatelessWidget {
  const ProjectImageContainer({
    super.key,
    required this.projectContentModel,
    this.height,
    this.bottomLeft = 0,
    this.bottomRight = 0,
  });

  final ProjectContentModel projectContentModel;
  final double? height;
  final double? bottomLeft, bottomRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(bottomLeft!),
              bottomRight: Radius.circular(bottomRight!)),
          image: DecorationImage(
              image: AssetImage(
                projectContentModel.img,
              ),
              fit: BoxFit.fill)),
    );
  }
}
