import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/widgets/count_widgets_list.dart';
import 'package:portfolio/features/widgets/download_cv_social_media_container.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';
import 'package:portfolio/features/widgets/my_education_section_widget.dart';
import 'package:portfolio/features/widgets/my_experiene_section_widget.dart';
import 'package:portfolio/features/widgets/my_recent_work_tab_bar.dart';
import 'package:portfolio/features/widgets/my_recent_work_top_widget.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';
import 'package:portfolio/features/widgets/quality_service_list_items.dart';
import 'package:portfolio/features/widgets/quality_service_top_widget.dart';
import 'package:portfolio/features/widgets/skills_list_generate.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.15,
                      horizontal: size.width * 0.07,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileMainDetails(size: size),
                        SizedBox(height: size.height * 0.05),
                        DownloadCvAndSocialMediaDesktopContainer(size: size),
                      ],
                    ),
                  ),
                  Expanded(child: ProfileImageWidget(size: size))
                ],
              ),
              CountWidgetsList(size: size),
              SizedBox(height: size.height * 0.07),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(children: [
                  QualityServiceTopWidget(size: size),
                  QualityServiceListItems(size: size),
                ]),
              ),
              SizedBox(
                  height: size.height * 0.07,
                  child: Container(color: AppColors.ebony)),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(children: [
                  MyRecentWorksTopWidget(size: size),
                  SizedBox(height: size.height * 0.03),
                  MyRecentWorksTabBar(size: size),
                  SizedBox(height: size.height * 0.07), // will remove
                ]),
              ),
              SizedBox(
                  height: size.height * 0.07,
                  child: Container(color: AppColors.ebony)),
              Container(
                width: double.infinity * 0.7,
                color: AppColors.ebony,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyExperienceSectionWidget(size: size),
                    MyEducationSectionWidget(size: size)
                  ],
                ),
              ),
              SizedBox(
                  height: size.height * 0.1,
                  child: Container(color: AppColors.ebony)),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(
                  children: [
                    GradientCustomText(size: size, title: "My Skills"),
                    SizedBox(height: size.height * 0.05),
                    const Text(
                      "My skills in app development allow me to create innovative and efficient solutions. I'm always eager to learn and improve,\nensuring I stay updated with the latest technologies.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: size.height * 0.07),
                    SkillsListGenerate(size: size),
                    SizedBox(height: size.height * 0.07),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
