import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_data.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(MyDummeyData.cvLink)) {
          await launch(MyDummeyData.cvLink);
          log("Launched");
        } else {
          log('Could not launch');
        }
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 1,
            color: AppColors.paleSlate,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Download CV ",
              style: TextStyle(
                  color: AppColors.paleSlate,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Icon(
              Icons.download,
              color: AppColors.paleSlate,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
