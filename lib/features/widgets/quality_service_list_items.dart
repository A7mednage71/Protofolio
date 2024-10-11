import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/features/widgets/quality_service_item.dart';

class QualityServiceListItems extends StatelessWidget {
  const QualityServiceListItems({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: DumyLists.qualityServices.asMap().entries.map((item) {
      return Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.01),
        child: QualityServiceItem(size: size, item: item),
      );
    }).toList());
  }
}
