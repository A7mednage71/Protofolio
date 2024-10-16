import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/features/widgets/skill_item_tablet.dart';

class SkillMobileGrid extends StatelessWidget {
  const SkillMobileGrid({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    double cardHeight = (size.height) / 2.2;
    double cardWidth = (size.width) / 1.3;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: size.width * 0.01,
        mainAxisSpacing: size.width * 0.08,
        childAspectRatio: cardWidth / cardHeight,
      ),
      itemCount: DumyLists.mySkills.length,
      itemBuilder: (context, index) {
        return SkillItemTablet(
          size: size,
          skill: DumyLists.mySkills[index],
        );
      },
    );
  }
}
