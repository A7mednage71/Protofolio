import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/features/widgets/experience_or_education_item.dart';

class EducationList extends StatelessWidget {
  const EducationList({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: DumyLists.educationList.asMap().entries.map((item) {
      return Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.04),
        child: ExperienceOrEducationItem(
          startYear: item.value.startyear,
          endYear: item.value.endYear,
          title: item.value.title,
          locationOrPosition: item.value.locationOrPosition,
          size: MediaQuery.of(context).size,
        ),
      );
    }).toList());
  }
}

class ExperienceList extends StatelessWidget {
  const ExperienceList({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: DumyLists.experienceList.asMap().entries.map((item) {
      return Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.04),
        child: ExperienceOrEducationItem(
          startYear: item.value.startyear,
          endYear: item.value.endYear,
          title: item.value.title,
          locationOrPosition: item.value.locationOrPosition,
          size: MediaQuery.of(context).size,
        ),
      );
    }).toList());
  }
}
