import 'package:flutter/material.dart';
import 'package:portfolio/features/widgets/count_widgets_list.dart';
import 'package:portfolio/features/widgets/download_cv_social_media_container.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';

class DesktopHomeSection extends StatelessWidget {
  const DesktopHomeSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.15,
                horizontal: size.width * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileMainDetails(size: size),
                  SizedBox(height: size.height * 0.05),
                  DownloadCvAndSocialMediaDesktopContainer(size: size),
                ],
              ),
            ),
            Expanded(child: ProfileImageWidget(size: size))
          ],
        ),
        CountWidgetsList(size: size),
        SizedBox(height: size.height * 0.07),
      ],
    );
  }
}
