import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
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

double getResponsivefontSize(
  context, {
  required double fontsize,
}) {
  double scalefactor = getScaleFactor(context);
  double responsiveSize = scalefactor * fontsize;

  double lower = fontsize * 0.8;
  double upper = fontsize * 1.2;

  return responsiveSize.clamp(lower, upper);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 450;
  } else if (width < SizeConfig.desktop) {
    return width / 600;
  } else {
    return width / 1000;
  }
}
