import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/functions/launch_url.dart';
import 'package:portfolio/widgets/content_container.dart';
import 'package:portfolio/widgets/row_in_contact_section.dart';
import 'package:portfolio/widgets/title_of_section.dart';

class MyContactSec extends StatelessWidget {
  const MyContactSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleOfSection(text: 'Contact'),
        SizedBox(
          height: 18,
        ),
        FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RowInContactSection(
                      icon: Icons.phone, text: '+20 1014881645'),
                  SizedBox(
                    width: 130,
                  ),
                  RowInContactSection(
                    icon: Icons.location_on,
                    text: 'Egypt, Damietta, New Damietta',
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  RowInContactSection(
                    icon: FontAwesomeIcons.github,
                    text: 'https://github.com/mai450',
                    onTap: () {
                      launchCustomUr(context, 'https://github.com/mai450');
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  RowInContactSection(
                    icon: Icons.email,
                    text: 'maiawad450@gmail.com',
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyContactSecInMobile extends StatelessWidget {
  const MyContactSecInMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleOfSection(text: 'Contact'),
        SizedBox(
          height: 18,
        ),
        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowInContactSection(icon: Icons.phone, text: '+20 1014881645'),
              SizedBox(
                height: 16,
              ),
              FittedBox(
                child: RowInContactSection(
                  icon: Icons.location_on,
                  text: 'Egypt, Damietta, New Damietta',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RowInContactSection(
                icon: FontAwesomeIcons.github,
                text: 'https://github.com/mai450',
                onTap: () {
                  launchCustomUr(context, 'https://github.com/mai450');
                },
              ),
              SizedBox(
                height: 16,
              ),
              RowInContactSection(
                icon: Icons.email,
                text: 'maiawad450@gmail.com',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
