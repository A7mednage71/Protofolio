import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProfileMainDetails extends StatelessWidget {
  const ProfileMainDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: size.width < SizeConfig.tablet
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I am Nageh",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        GradientText(
          "Mobile App Developer +\nFlutter Developer",
          colors: const [AppColors.studio, AppColors.paleSlate],
          style: TextStyle(
            fontSize: size.width * 0.035,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
          textAlign: size.width < SizeConfig.tablet
              ? TextAlign.center
              : TextAlign.start,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        SizedBox(
          width: size.width * 0.5,
          child: Text(
            "Enthusiastic Junior Flutter Developer with a solid foundation in mobile\napp development and a passion for creating engaging user experiences and experienced\nin building cross-platform applications with Flutter framework.",
            style: const TextStyle(color: Colors.white, fontSize: 16),
            textAlign: size.width < SizeConfig.tablet
                ? TextAlign.center
                : TextAlign.start,
          ),
        )
      ],
    );
  }
}
