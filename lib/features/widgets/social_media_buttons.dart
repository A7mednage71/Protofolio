import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/features/widgets/social_icon.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialIconWidget(icon: FontAwesomeIcons.facebookF),
        SocialIconWidget(icon: FontAwesomeIcons.linkedin),
        SocialIconWidget(icon: FontAwesomeIcons.envelope),
        SocialIconWidget(icon: FontAwesomeIcons.github),
      ],
    );
  }
}
