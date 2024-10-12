import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/mobile_layout/widgets/count_widgets_list_mobile.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_mobile_items_list.dart';
import 'package:portfolio/features/tablet_layout/widgets/download_cv_and_socia_buttons.dart';
import 'package:portfolio/features/widgets/profile_image.dart';
import 'package:portfolio/features/widgets/profile_main_details.dart';
import 'package:portfolio/features/widgets/quality_service_top_widget.dart';

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
                height: size.height * 1.32,
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(children: [
                  QualityServiceTopWidget(size: size),
                  QualityServiceMobileListItems(size: size),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
