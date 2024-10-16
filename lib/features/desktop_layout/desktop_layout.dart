import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/desktop_layout/widgets/desktop_home_section.dart';
import 'package:portfolio/features/desktop_layout/widgets/my_skills_section_desktop.dart';
import 'package:portfolio/features/widgets/experience_and_education_section.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';
import 'package:portfolio/features/widgets/quality_service_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: const TabBar(tabs: [
      //   Tab(text: 'All'),
      //   Tab(text: 'Brands'),
      //   Tab(text: 'Apps'),
      //   Tab(text: 'Websites'),
      // ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppStyles.gradientBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DesktopHomeSection(size: size),
              QualityServicesSection(size: size),
              MyWorksSection(size: size),
              ExperienceAndEducationSection(size: size),
              MySkillsSectionDesktop(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
