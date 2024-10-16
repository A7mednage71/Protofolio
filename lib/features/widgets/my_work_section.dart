import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/my_recent_work_tab_bar.dart';
import 'package:portfolio/features/widgets/my_recent_work_top_widget.dart';

class MyWorksSection extends StatelessWidget {
  const MyWorksSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.ebony,
      child: Column(children: [
        SizedBox(height: size.height * 0.07),
        MyRecentWorksTopWidget(size: size),
        SizedBox(height: size.height * 0.03),
        MyRecentWorksTabBar(size: size),
        SizedBox(height: size.height * 0.07), // will remove
      ]),
    );
  }
}
