import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_container_with_date.dart';
import 'package:portfolio/widgets/title_of_section.dart';

class MyEducationSec extends StatelessWidget {
  const MyEducationSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleOfSection(
          text: 'Education',
        ),
        SizedBox(
          height: 12,
        ),
        CustomContainerWithDate(
          content:
              'Faculty Of Computers And Informatics, Suez Canal University',
          data: '2020 - 2024',
        ),
      ],
    );
  }
}
