import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/experience_education_list_generate.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';

class MyEducationSectionWidget extends StatelessWidget {
  const MyEducationSectionWidget({
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
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.school,
              color: AppColors.studio,
              size: size.width < SizeConfig.tablet
                  ? size.width * 0.05
                  : size.width < SizeConfig.desktop
                      ? size.width * 0.045
                      : size.width * 0.025,
            ),
            const SizedBox(width: 30),
            GradientCustomText(size: size, title: "My Education"),
          ],
        ),
        SizedBox(height: size.height * 0.04),
        EducationList(size: size),
      ],
    );
  }
}
