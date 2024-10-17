import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/my_education_section_widget.dart';
import 'package:portfolio/features/widgets/my_experiene_section_widget.dart';

class ExperienceAndEducationSection extends StatelessWidget {
  const ExperienceAndEducationSection({
    super.key,
    required this.size,
    required this.sectionKey,
  });

  final Size size;
  final GlobalKey? sectionKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      width: double.infinity * 0.7,
      color: AppColors.ebony,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyExperienceSectionWidget(size: size, sectionKey: null),
          MyEducationSectionWidget(size: size, sectionKey: null),
        ],
      ),
    );
  }
}
