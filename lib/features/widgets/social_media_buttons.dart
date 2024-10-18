import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/dumy_data.dart';
import 'package:portfolio/features/widgets/social_icon.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialIconWidget(
            icon: FontAwesomeIcons.facebookF, url: MyDummeyData.facebookLink),
        SocialIconWidget(
            icon: FontAwesomeIcons.linkedin, url: MyDummeyData.linkedinLink),
        SocialIconWidget(
            icon: FontAwesomeIcons.twitter, url: MyDummeyData.twitterLink),
        SocialIconWidget(
            icon: FontAwesomeIcons.github, url: MyDummeyData.githubLink),
      ],
    );
  }
}
