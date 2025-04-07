import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/custom_button.dart';
import 'package:portfolio/core/utils/functions/launch_url.dart';
import 'package:portfolio/models/project_content.dart';
import 'package:portfolio/widgets/content_container.dart';
import 'package:portfolio/widgets/project_content_under_img.dart';
import 'package:portfolio/widgets/project_img_container.dart';

class ProjectsContent extends StatelessWidget {
  final ProjectContentModel projectContentModel;

  const ProjectsContent({
    super.key,
    required this.projectContentModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width < 900
          ? MediaQuery.sizeOf(context).width * 0.5
          : MediaQuery.sizeOf(context).width * 0.38,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color: const Color.fromARGB(255, 114, 115, 84)),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.asset(
          //   projectContentModel.img,
          //   // height: MediaQuery.sizeOf(context).height * 0.4,
          // ),
          ProjectImageContainer(
            projectContentModel: projectContentModel,
            height: MediaQuery.sizeOf(context).height * 0.35,
          ),
          ProjectContentUnderImg(projectContentModel: projectContentModel),
        ],
      ),
    );
  }
}

class ProjectsContentInMobile extends StatelessWidget {
  final ProjectContentModel projectContentModel;

  const ProjectsContentInMobile({
    super.key,
    required this.projectContentModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width > 595
          ? MediaQuery.sizeOf(context).width * 0.6
          : null,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(color: const Color.fromARGB(255, 114, 115, 84)),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              launchCustomUr(context, projectContentModel.imageUrl);
            },
            child: ProjectImageContainer(
              projectContentModel: projectContentModel,
              height: MediaQuery.sizeOf(context).height * 0.25,
            ),
          ),
          ProjectContentUnderImg(projectContentModel: projectContentModel),
        ],
      ),
    );
    // ContentContainer(
    //     padding: EdgeInsets.zero,
    //     margin: EdgeInsets.symmetric(vertical: 12),
    //     child: IntrinsicHeight(
    //       child: Row(
    //         children: [
    //           GestureDetector(
    //             onTap: () {
    //               launchCustomUr(context, projectContentModel.imageUrl);
    //             },
    //             child: Container(
    //               width: MediaQuery.sizeOf(context).width > 650 ? 250 : 100,
    //               //margin: EdgeInsets.only(right: 12),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(
    //                     topLeft: Radius.circular(12),
    //                     bottomLeft: Radius.circular(12),
    //                   ),
    //                   image: DecorationImage(
    //                       image: AssetImage(
    //                         projectContentModel.img,
    //                       ),
    //                       fit: BoxFit.fill)),
    //             ),
    //           ),
    //           Expanded(
    //             child: Padding(
    //               padding: const EdgeInsets.all(18.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(children: [
    //                     Text(
    //                       projectContentModel.title,
    //                       style: TextStyle(
    //                           fontSize: 16, fontWeight: FontWeight.w600),
    //                     ),
    //                     Spacer(),
    //                     CustomButton(
    //                       textColor: Colors.black,
    //                       text: 'Demo',
    //                       backgroundColor: primaryColor,
    //                       onPressed: () {
    //                         launchCustomUr(context, projectContentModel.demo);
    //                       },
    //                     ),
    //                   ]),
    //                   SizedBox(
    //                     height: 12,
    //                   ),
    //                   Text(projectContentModel.desc),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ));
  }
}
