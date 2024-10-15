import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyRecentWorksTopWidget extends StatelessWidget {
  const MyRecentWorksTopWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GradientText("My Recent Works",
        colors: const [AppColors.studio, AppColors.paleSlate],
        style: TextStyle(
            fontSize: size.width < SizeConfig.tablet
                ? size.width * 0.05
                : size.width < SizeConfig.desktop
                    ? size.width * 0.035
                    : size.width * 0.025,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'),
        textAlign: TextAlign.center);
  }
}
