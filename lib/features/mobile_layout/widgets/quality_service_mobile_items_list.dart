import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_data.dart';
import 'package:portfolio/features/mobile_layout/widgets/quality_service_mobile_item.dart';

class QualityServiceMobileListItems extends StatelessWidget {
  const QualityServiceMobileListItems({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: MyDummeyData.qualityServices.asMap().entries.map((item) {
      return Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.01),
        child: QualityServiceMobileItem(size: size, item: item),
      );
    }).toList());
  }
}
