import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/tablet_layout/widgets/my_skills_section_tablet.dart';
import 'package:portfolio/features/tablet_layout/widgets/tablet_home_section.dart';
import 'package:portfolio/features/widgets/experience_and_education_section.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';
import 'package:portfolio/features/widgets/quality_service_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
              TabletHomeSection(size: size),
              QualityServicesSection(size: size),
              MyWorksSection(size: size),
              ExperienceAndEducationSection(size: size),
              MySkillsSectionTablet(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
