import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class AppStyles {
  static const BoxDecoration gradientBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.ebony,
        AppColors.studio,
      ],
    ),
  );
  static const BoxDecoration gradientServiceBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.studio,
        AppColors.valhalla,
      ],
    ),
  );
}
