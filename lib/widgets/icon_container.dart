import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,
    required this.iconColor,
  });

  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 12,
          color: iconColor,
        ),
      ),
    );
  }
}
