import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/custom_button.dart';
import 'package:portfolio/core/utils/functions/launch_url.dart';
import 'package:portfolio/models/project_content.dart';

class ProjectViewBody extends StatefulWidget {
  const ProjectViewBody({super.key, required this.projectContentModell});

  final ProjectContentModel projectContentModell;

  @override
  State<ProjectViewBody> createState() => _ProjectViewBodyState();
}

class _ProjectViewBodyState extends State<ProjectViewBody> {
  final CarouselSliderController controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 600,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  ),
                  items: [
                    for (int i = 0;
                        i < widget.projectContentModell.projectimages!.length;
                        i++)
                      Image(
                        image: AssetImage(
                            widget.projectContentModell.projectimages![i]),
                      ),
                  ],
                ),
                // Left Arrow (Previous)
                Positioned(
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      controller.previousPage();
                    },
                    icon: Icon(Icons.arrow_back_ios,
                        color: primaryColor, size: 30),
                  ),
                ),
                // Right Arrow (Next)
                Positioned(
                  right: 10,
                  child: IconButton(
                    onPressed: () {
                      controller.nextPage();
                    },
                    icon: Icon(Icons.arrow_forward_ios,
                        color: primaryColor, size: 30),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    widget.projectContentModell.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.projectContentModell.desc,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        textColor: Colors.black,
                        text: 'Demo',
                        backgroundColor: primaryColor,
                        onPressed: () {
                          launchCustomUr(
                              context, widget.projectContentModell.demo);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
