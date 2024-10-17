import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/experience_education_list_generate.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';

class MyExperienceSectionWidget extends StatelessWidget {
  const MyExperienceSectionWidget({
    super.key,
    required this.size,
    required this.sectionKey,
  });

  final Size size;
  final GlobalKey? sectionKey;
  @override
  Widget build(BuildContext context) {
    return Column(
      key: sectionKey,
      crossAxisAlignment: size.width < SizeConfig.tablet
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.award,
              color: AppColors.studio,
              size: size.width < SizeConfig.tablet
                  ? size.width * 0.06
                  : size.width < SizeConfig.desktop
                      ? size.width * 0.050
                      : size.width * 0.025,
            ),
            const SizedBox(width: 20),
            GradientCustomText(size: size, title: "My Experience"),
          ],
        ),
        SizedBox(height: size.height * 0.04),
        ExperienceList(size: size),
      ],
    );
  }
}
