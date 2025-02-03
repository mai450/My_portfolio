import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/responsive_text.dart';
import 'package:portfolio/widgets/icon_container.dart';

class RowInContactSection extends StatelessWidget {
  const RowInContactSection({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(icon: icon, iconColor: primaryColor),
        SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getResponsiveFontsize(context, fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
