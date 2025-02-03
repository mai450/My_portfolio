import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me_section.dart';
import 'package:portfolio/widgets/custom_image.dart';
import 'package:portfolio/widgets/my_contact_section.dart';
import 'package:portfolio/widgets/my_education_sec.dart';
import 'package:portfolio/widgets/my_resume_button.dart';
import 'package:portfolio/widgets/my_skills_container.dart';
import 'package:portfolio/widgets/project_slider.dart';
import 'package:portfolio/widgets/row_of_job_title.dart';
import 'package:portfolio/widgets/title_of_section.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    animation = Tween<double>(begin: -20, end: 0).animate(controller);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!controller.isAnimating) {
        controller.repeat(reverse: true);
      }
      setState(() {});
    } else if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      controller.stop();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, animation.value),
                  child: child,
                );
              },
              child: CustomImage()),
          SizedBox(
            height: 12,
          ),
          RowJobTitle(),
          SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              "Hello, i'm Mai Awad",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(child: MyResumeButton()),
          SizedBox(
            height: 18,
          ),
          if (MediaQuery.sizeOf(context).width < 900) MyContactSecInMobile(),
          SizedBox(
            height: 24,
          ),
          MyEducationSec(),
          SizedBox(
            height: 24,
          ),
          if (MediaQuery.sizeOf(context).width < 900) AboutMeSec(),
          SizedBox(
            height: 24,
          ),
          TitleOfSection(text: 'Skills'),
          SizedBox(
            height: 12,
          ),
          SkillsContainer(),
          SizedBox(
            height: 24,
          ),
          if (MediaQuery.sizeOf(context).width < 900)
            TitleOfSection(text: 'Projects'),
          SizedBox(
            height: 12,
          ),
          if (MediaQuery.sizeOf(context).width < 900)
            Center(child: ProjectsListViewInMobile()),
        ],
      ),
    );
  }
}
