import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/tablet_layout/widgets/my_skills_section_tablet.dart';
import 'package:portfolio/features/tablet_layout/widgets/tablet_home_section.dart';
import 'package:portfolio/features/widgets/app_bar.dart';
import 'package:portfolio/features/widgets/experience_and_education_section.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';
import 'package:portfolio/features/widgets/quality_service_section.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  final List<GlobalKey> _sectionsKeys =
      List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(sectionKeys: _sectionsKeys),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppStyles.gradientBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabletHomeSection(size: size, sectionKey: _sectionsKeys[0]),
              QualityServicesSection(size: size, sectionKey: _sectionsKeys[1]),
              MyWorksSection(size: size, sectionKey: _sectionsKeys[2]),
              ExperienceAndEducationSection(
                  size: size, sectionKey: _sectionsKeys[3]),
              MySkillsSectionTablet(size: size, sectionKey: _sectionsKeys[4]),
            ],
          ),
        ),
      ),
    );
  }
}
