import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/custom_button.dart';
import 'package:portfolio/core/utils/functions/launch_url.dart';
import 'package:portfolio/models/project_content.dart';

class ProjectContentUnderImg extends StatelessWidget {
  const ProjectContentUnderImg({
    super.key,
    required this.projectContentModel,
  });

  final ProjectContentModel projectContentModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 12, bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectContentModel.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            projectContentModel.desc,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                textColor: Colors.black,
                text: 'GitHub',
                backgroundColor: primaryColor,
                onPressed: () {
                  launchCustomUr(context, projectContentModel.demo);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
