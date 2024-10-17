import 'package:flutter/material.dart';
import 'package:portfolio/features/tablet_layout/widgets/download_cv_and_socia_buttons.dart';
import 'package:portfolio/features/widgets/count_widgets_list.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';

class TabletHomeSection extends StatelessWidget {
  const TabletHomeSection({
    super.key,
    required this.size, this.sectionKey,
  });

  final Size size;
   final GlobalKey? sectionKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: sectionKey,
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
                  DownloadCvAndSocialMediaTabletContainer(size: size)
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
