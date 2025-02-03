import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onPressed,
    required this.textColor,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,

        shadowColor: Colors.grey, // Shadow color
        elevation: 5, // Elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontSize: MediaQuery.sizeOf(context).width > 600 ? 14 : 12),
      ),
    );
  }
}
