import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/mobile_layout/widgets/skills_grid_view_mobile.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';
import 'package:portfolio/features/widgets/skill_Section_top_text.dart';

class MySkillsSectionMobile extends StatelessWidget {
  const MySkillsSectionMobile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.ebony,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1),
          GradientCustomText(size: size, title: "My Skills"),
          SizedBox(height: size.height * 0.03),
          SkillsSectionTopText(size: size),
          SizedBox(height: size.height * 0.05),
          SkillMobileGrid(size: size),
          SizedBox(height: size.height * 0.07),
        ],
      ),
    );
  }
}
