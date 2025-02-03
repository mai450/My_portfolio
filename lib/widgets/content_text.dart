import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key,
    required this.content,
    this.fontWeight,
  });

  final String content;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}
