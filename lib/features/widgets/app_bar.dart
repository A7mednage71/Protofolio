import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/widgets/app_bar_hire_me_button.dart';
import 'package:portfolio/features/widgets/app_bar_tab.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final List<GlobalKey> sectionKeys;

  const CustomAppBar({super.key, required this.sectionKeys})
      : preferredSize = const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: AppStyles.gradientBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Assets.portofolioLogo, height: 60, width: width * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBarTab(
                    text: "Home",
                    onPressed: () {
                      _scrollToSectionByKey(sectionKeys[0]);
                    }),
                CustomAppBarTab(
                    text: "Services",
                    onPressed: () {
                      _scrollToSectionByKey(sectionKeys[1]);
                    }),
                CustomAppBarTab(
                    text: "Works",
                    onPressed: () {
                      _scrollToSectionByKey(sectionKeys[2]);
                    }),
                CustomAppBarTab(
                    text: "Education & Experience",
                    onPressed: () {
                      _scrollToSectionByKey(sectionKeys[3]);
                    }),
                CustomAppBarTab(
                    text: "Skills",
                    onPressed: () {
                      _scrollToSectionByKey(sectionKeys[4]);
                    }),
                const SizedBox(width: 20),
                AppBarHireMeButton(
                  onPressed: () {},
                  text: "Hire me!",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to scroll to widget using GlobalKey
  void _scrollToSectionByKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
