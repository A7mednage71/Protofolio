import 'package:flutter/material.dart';
import 'package:portfolio/features/widgets/download_cv_button.dart';
import 'package:portfolio/features/widgets/social_media_buttons.dart';

class DownloadCvAndSocialMediaCustomContainer extends StatelessWidget {
  const DownloadCvAndSocialMediaCustomContainer({
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
