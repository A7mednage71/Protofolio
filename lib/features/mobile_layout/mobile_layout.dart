import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/mobile_layout/widgets/count_widgets_list_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/experience_and_education_section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/home_Section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/mobile_app_bar.dart';
import 'package:portfolio/features/mobile_layout/widgets/mobile_drawer.dart';
import 'package:portfolio/features/mobile_layout/widgets/my_skills_section_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_section_mobile.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final List<GlobalKey> _sectionsKeys =
      List.generate(6, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const MobileAppBar(),
      drawer: MobileDrawer(sectionKeys: _sectionsKeys),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppStyles.gradientBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              HomeSectionMobile(size: size, sectionKey: _sectionsKeys[0]),
              CountWidgetsListMobile(size: size),
              SizedBox(height: size.height * 0.07),
              QualityServiceSectionMobile(
                  size: size, sectionKey: _sectionsKeys[1]),
              MyWorksSection(size: size, sectionKey: _sectionsKeys[2]),
              ExperienceAndEducationSectionMobile(
                  size: size,
                  experienceSectionKey: _sectionsKeys[3],
                  educationSectionKey: _sectionsKeys[4]),
              MySkillsSectionMobile(size: size, sectionKey: _sectionsKeys[5]),
            ],
          ),
        ),
      ),
    );
  }
}
