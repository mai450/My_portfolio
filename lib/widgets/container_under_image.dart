import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';

class ContainerUnderImage extends StatelessWidget {
  const ContainerUnderImage({
    super.key,
    required this.width,
    this.borderRadius,
  });

  final double width;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadius,
      ),
    );
  }
}
