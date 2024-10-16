import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/features/widgets/skill_item.dart';
import 'package:portfolio/features/widgets/skill_item_tablet.dart';

class SkillsListGenerate extends StatelessWidget {
  const SkillsListGenerate({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: DumyLists.mySkills.asMap().entries.map((item) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SkillItem(
              size: size,
              skill: item.value,
            ),
          );
        }).toList());
  }
}

class SkillsTabletListGenerate extends StatelessWidget {
  const SkillsTabletListGenerate({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: DumyLists.mySkills.asMap().entries.map((item) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SkillItemTablet(
              size: size,
              skill: item.value,
            ),
          );
        }).toList());
  }
}

