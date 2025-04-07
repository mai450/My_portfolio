import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    this.fontSize = 16,
  });

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
            color: Color(0xffD6DB26), borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
