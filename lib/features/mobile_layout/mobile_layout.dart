import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/mobile_layout/widgets/count_widgets_list_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_mobile_items_list.dart';
import 'package:portfolio/features/mobile_layout/widgets/skills_grid_view_mobile.dart';
import 'package:portfolio/features/tablet_layout/widgets/download_cv_and_socia_buttons.dart';
import 'package:portfolio/features/widgets/gradient_custom_text.dart';
import 'package:portfolio/features/widgets/my_education_section_widget.dart';
import 'package:portfolio/features/widgets/my_experiene_section_widget.dart';
import 'package:portfolio/features/widgets/my_recent_work_tab_bar.dart';
import 'package:portfolio/features/widgets/my_recent_work_top_widget.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';
import 'package:portfolio/features/widgets/quality_service_top_widget.dart';
import 'package:portfolio/features/widgets/skill_Section_top_text.dart';

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
              ProfileImageWidget(size: size),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.10,
                      horizontal: size.width * 0.07,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProfileMainDetails(size: size),
                        SizedBox(height: size.height * 0.05),
                        DownloadCvAndSocialMediaTabletContainer(size: size)
                      ],
                    ),
                  ),
                ],
              ),
              CountWidgetsListMobile(size: size),
              SizedBox(height: size.height * 0.07),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(children: [
                  QualityServiceTopWidget(size: size),
                  QualityServiceMobileListItems(size: size),
                ]),
              ),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(children: [
                  SizedBox(height: size.height * 0.07),
                  MyRecentWorksTopWidget(size: size),
                  SizedBox(height: size.height * 0.03),
                  MyRecentWorksTabBar(size: size),
                  SizedBox(height: size.height * 0.07), // will remove
                ]),
              ),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyExperienceSectionWidget(size: size),
                      MyEducationSectionWidget(size: size)
                    ],
                  ),
                ),
              ),
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
