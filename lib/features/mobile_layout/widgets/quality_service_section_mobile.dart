import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_mobile_items_list.dart';
import 'package:portfolio/features/widgets/quality_service_top_widget.dart';

class QualityServiceSectionMobile extends StatelessWidget {
  const QualityServiceSectionMobile({
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
        QualityServiceTopWidget(size: size),
        QualityServiceMobileListItems(size: size),
      ]),
    );
  }
}
