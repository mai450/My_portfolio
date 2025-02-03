import 'package:flutter/material.dart';

class TitleOfSection extends StatelessWidget {
  const TitleOfSection({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }
}
