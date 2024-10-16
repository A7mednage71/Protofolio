import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/mobile_layout/widgets/count_widgets_list_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/experience_and_education_section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/home_Section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/my_skills_section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_section_mobile.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppStyles.gradientBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              HomeSectionMobile(size: size),
              CountWidgetsListMobile(size: size),
              SizedBox(height: size.height * 0.07),
              QualityServiceSectionMobile(size: size),
              MyWorksSection(size: size),
              ExperienceAndEducationSectionMobile(size: size),
              MySkillsSectionMobile(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
