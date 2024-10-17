import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/my_education_section_widget.dart';
import 'package:portfolio/features/widgets/my_experiene_section_widget.dart';

class ExperienceAndEducationSectionMobile extends StatelessWidget {
  const ExperienceAndEducationSectionMobile({
    super.key,
    required this.size,
    required this.experienceSectionKey,
    required this.educationSectionKey,
  });

  final Size size;
  final GlobalKey experienceSectionKey;
  final GlobalKey educationSectionKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.ebony,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyExperienceSectionWidget(
                size: size, sectionKey: experienceSectionKey),
            MyEducationSectionWidget(
                size: size, sectionKey: educationSectionKey),
          ],
        ),
      ),
    );
  }
}
