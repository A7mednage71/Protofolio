import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/quality_service_list_items.dart';
import 'package:portfolio/features/widgets/quality_service_top_widget.dart';

class QualityServicesSection extends StatelessWidget {
  const QualityServicesSection({
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
        QualityServiceListItems(size: size),
      ]),
    );
  }
}
