import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';

class ContentContainer extends StatelessWidget {
  const ContentContainer(
      {super.key, required this.child, this.margin, this.width});
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
