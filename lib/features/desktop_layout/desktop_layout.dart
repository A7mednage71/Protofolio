import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/desktop_layout/widgets/desktop_home_section.dart';
import 'package:portfolio/features/desktop_layout/widgets/my_skills_section_desktop.dart';
import 'package:portfolio/features/widgets/app_bar.dart';
import 'package:portfolio/features/widgets/experience_and_education_section.dart';
import 'package:portfolio/features/widgets/my_work_section.dart';
import 'package:portfolio/features/widgets/quality_service_section.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  late ScrollController _scrollController;
  final List<GlobalKey> _sectionsKeys =
      List.generate(5, (index) => GlobalKey());

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
          controller: _scrollController,
          child: Column(
            children: [
              DesktopHomeSection(size: size, sectionKey: _sectionsKeys[0]),
              QualityServicesSection(size: size, sectionKey: _sectionsKeys[1]),
              MyWorksSection(size: size, sectionKey: _sectionsKeys[2]),
              ExperienceAndEducationSection(size: size , sectionKey: _sectionsKeys[3]),
              MySkillsSectionDesktop(size: size , sectionKey: _sectionsKeys[4]),
            ],
          ),
        ),
      ),
    );
  }
}
