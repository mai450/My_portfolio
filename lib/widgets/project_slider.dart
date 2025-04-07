import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/projects_list.dart';
import 'package:portfolio/views/project_view.dart';
import 'package:portfolio/widgets/project_content.dart';
import 'package:portfolio/widgets/project_img_container.dart';

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

class ProjectSlider2 extends StatefulWidget {
  const ProjectSlider2({super.key});

  @override
  State<ProjectSlider2> createState() => _ProjectSlider2State();
}

class _ProjectSlider2State extends State<ProjectSlider2> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: projectContentModel.length,
        options: CarouselOptions(
          height: MediaQuery.sizeOf(context).height * 0.5,
          autoPlay: true,
          enlargeCenterPage: true,
          //aspectRatio: 16 / 9,
          //viewportFraction: 0.8,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
        itemBuilder: (context, index, realIndex) {
          return MouseRegion(
            onEnter: (_) => setState(() => hoveredIndex = index),
            onExit: (_) => setState(() => hoveredIndex = -1),
            child: Stack(
              children: [
                ProjectImageContainer(
                  projectContentModel: projectContentModel[index],
                  bottomLeft: 12,
                  bottomRight: 12,
                ),
                // Buttons shown on hover
                if (hoveredIndex == index)
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.6,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black, // Dark overlay
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProjectView(
                                          projectContentModel:
                                              projectContentModel[index],
                                        ),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  // foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                        color: Colors.white,
                                      )),
                                  padding: EdgeInsets.all(15),
                                ),
                                child: Text(
                                  'View',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 20),
                              // ElevatedButton(
                              //   onPressed: () => print("Button 2 Clicked"),
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: Colors.white,
                              //     shape: CircleBorder(),
                              //     padding: EdgeInsets.all(15),
                              //   ),
                              //   child: Icon(Icons.share),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        }

        // child: SizedBox(
        //   height: 350,
        //   child: CarouselView.weighted(
        //     controller: controller,
        //     flexWeights: [
        //     1,
        //     7,
        //     1
        //   ], children: [
        //     for (int i = 0; i < projectContentModel.length; i++)
        //       ProjectImageContainer(
        //         projectContentModel: projectContentModel[i],
        //         height: 0,
        //       )
        //   ]),
        // ),
        );
  }
}
