import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';
import 'package:portfolio/features/widgets/skill_Section_top_text.dart';
import 'package:portfolio/features/widgets/skills_list_generate.dart';

class MySkillsSectionTablet extends StatelessWidget {
  const MySkillsSectionTablet({
    super.key,
    required this.size,
    this.sectionKey,
  });

  final Size size;
  final GlobalKey? sectionKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      width: double.infinity,
      color: AppColors.ebony,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1),
          GradientCustomText(size: size, title: "My Skills"),
          SizedBox(height: size.height * 0.03),
          SkillsSectionTopText(size: size),
          SizedBox(height: size.height * 0.05),
          SkillsTabletListGenerate(size: size),
          SizedBox(height: size.height * 0.07),
        ],
      ),
    );
  }
}
