import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_container.dart';
import 'package:portfolio/widgets/icon_container.dart';

class RowJobTitle extends StatelessWidget {
  const RowJobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconContainer(
          icon: Icons.arrow_forward_ios_rounded,
          iconColor: Colors.white,
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: CustomContainer(
            text: 'Flutter Developer',
          ),
        ),
      ],
    );
  }
}
