import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/features/widgets/my_work_grid_view_item.dart';

class MyRecentWorkGridView extends StatelessWidget {
  const MyRecentWorkGridView(
      {super.key, required this.works, required this.size});
  final List<RecentWorkModel> works;
  final Size size;
  @override
  Widget build(BuildContext context) {
    double cardHeight = (size.height * 0.7) / 2; // Height of each card
    double cardWidth = (size.width * 0.7) / 2; // Width of each card

    if (works.isEmpty) {
      return Center(
        child: Lottie.asset(
          Assets.emptyList,
          width: 300,
          height: 300,
          fit: BoxFit.fill,
        ),
      );
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size.width < SizeConfig.tablet ? 1 : 2,
        crossAxisSpacing: size.width * 0.02,
        mainAxisSpacing: size.height * 0.02,
        childAspectRatio: cardWidth / cardHeight,
      ),
      itemCount: works.length,
      itemBuilder: (context, index) {
        return MyWorkGridViewItem(cardWidth: cardWidth, cardHeight: cardHeight);
      },
    );
  }
}
