import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/widgets/content_container.dart';

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowInSkillsContainer(
          title: 'Dart',
          value: 0.9,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Flutter',
          value: 0.95,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'RESTful APIs',
          value: 0.90,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'OOP',
          value: 0.9,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Firebase',
          value: 0.80,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Bloc & Cubit',
          value: 0.90,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Google Maps',
          value: 0.85,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Payment Getways',
          value: 0.8,
        ),
        SizedBox(
          height: 8,
        ),
        RowInSkillsContainer(
          title: 'Git & GitHub',
          value: 0.80,
        ),
      ],
    ));
  }
}

class RowInSkillsContainer extends StatelessWidget {
  const RowInSkillsContainer({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: LinearProgressIndicator(
            value: value, // 50% completion
            backgroundColor: Colors.grey, // Background color
            borderRadius: BorderRadius.circular(5),
            color: primaryColor, // Progress bar color
            minHeight: 12, // Height of the progress bar
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "${(value * 100)}%",
        ),
      ],
    );
  }
}
