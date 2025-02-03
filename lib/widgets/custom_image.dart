import 'package:flutter/material.dart';
import 'package:portfolio/widgets/container_under_image.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Column(
            children: [
              FittedBox(
                child: Row(
                  children: [
                    ContainerUnderImage(
                      width: 90,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                    ),
                    ContainerUnderImage(
                      width: 120,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    ContainerUnderImage(
                      width: 90,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    ContainerUnderImage(
                        width: 120,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        Image.asset(
          'assets/my_photo.png',
          height: 210,
        ),
      ],
    );
  }
}
