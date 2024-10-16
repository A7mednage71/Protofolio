import 'package:flutter/material.dart';
import 'package:portfolio/features/tablet_layout/widgets/download_cv_and_socia_buttons.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImageWidget(size: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.10,
                horizontal: size.width * 0.07,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileMainDetails(size: size),
                  SizedBox(height: size.height * 0.05),
                  DownloadCvAndSocialMediaTabletContainer(size: size)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
