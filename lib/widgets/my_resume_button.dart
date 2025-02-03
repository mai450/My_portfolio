import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/functions/launch_url.dart';

class MyResumeButton extends StatefulWidget {
  const MyResumeButton({
    super.key,
  });

  @override
  State<MyResumeButton> createState() => _MyResumeButtonState();
}

class _MyResumeButtonState extends State<MyResumeButton> {
  final String resumeUrl =
      'https://drive.google.com/file/d/1GP9QiuZVw4nNAVqFPixEuO958EVpP_Vb/view?usp=sharing';
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: containerColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          launchCustomUr(context, resumeUrl);
        },
        child: Row(
          children: [
            Icon(
              Icons.cloud_download_rounded,
              size: 18,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Download my Resume',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
