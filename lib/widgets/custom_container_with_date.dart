import 'package:flutter/material.dart';
import 'package:portfolio/widgets/content_container.dart';
import 'package:portfolio/widgets/content_text.dart';
import 'package:portfolio/widgets/custom_container.dart';

class CustomContainerWithDate extends StatelessWidget {
  const CustomContainerWithDate(
      {super.key, required this.data, required this.content});
  final String data;
  final String content;
  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            VerticalDivider(
              color: Color(0xffD6DB26),
              thickness: 2,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    text: data,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ContentText(content: content),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
