import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log("Download CV Button Tapped");
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 1,
            color: AppColors.studio,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Download CV ",
              style: TextStyle(
                  color: AppColors.studio,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Icon(
              Icons.download,
              color: AppColors.studio,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
