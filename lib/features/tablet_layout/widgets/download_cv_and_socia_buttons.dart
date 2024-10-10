import 'package:flutter/material.dart';
import 'package:portfolio/features/widgets/download_cv_button.dart';
import 'package:portfolio/features/widgets/social_media_buttons.dart';

class DownloadCvAndSocialMediaTabletContainer extends StatelessWidget {
  const DownloadCvAndSocialMediaTabletContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DownloadCvButton(),
        SizedBox(height: 20),
        SocialMediaButtons(),
      ],
    );
  }
}
