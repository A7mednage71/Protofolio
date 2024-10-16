import 'package:flutter/material.dart';
import 'package:portfolio/features/widgets/download_cv_button.dart';
import 'package:portfolio/features/widgets/social_media_buttons.dart';

class DownloadCvAndSocialMediaDesktopContainer extends StatelessWidget {
  const DownloadCvAndSocialMediaDesktopContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DownloadCvButton(),
        SocialMediaButtons(),
      ],
    );
  }
}
