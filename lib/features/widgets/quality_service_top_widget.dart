import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class QualityServiceTopWidget extends StatelessWidget {
  const QualityServiceTopWidget({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.03),
        GradientText(
          "My Quality Services",
          colors: const [AppColors.studio, AppColors.paleSlate],
          style: TextStyle(
              fontSize: size.width < SizeConfig.tablet
                  ? size.width * 0.05
                  : size.width < SizeConfig.desktop
                      ? size.width * 0.035
                      : size.width * 0.025,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.03),
        const Text(
          "As a passionate and experienced Flutter developer, I specialize in creating high-performance,\nvisually appealing, and cross-platform mobile applications",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.05),
      ],
    );
  }
}
