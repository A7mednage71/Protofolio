import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class ExperienceOrEducationItem extends StatefulWidget {
  const ExperienceOrEducationItem({
    super.key,
    required this.startYear,
    required this.endYear,
    required this.title,
    required this.locationOrPosition,
    required this.size,
  });
  final String startYear;
  final String endYear;
  final String title;
  final String locationOrPosition;
  final Size size;

  @override
  State<ExperienceOrEducationItem> createState() =>
      _ExperienceOrEducationItemState();
}

class _ExperienceOrEducationItemState extends State<ExperienceOrEducationItem> {
  bool isHovered = false;
  sethoverState(bool bool) {
    setState(() {
      isHovered = bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => sethoverState(true),
      onExit: (event) => sethoverState(false),
      child: Container(
        width: widget.size.width * 0.4,
        height: widget.size.height * 0.17,
        decoration: BoxDecoration(
          color: isHovered ? null : AppColors.experienceItemBackground,
          gradient: isHovered
              ? const LinearGradient(
                  colors: [
                    AppColors.studio,
                    AppColors.valhalla,
                  ],
                )
              : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.startYear} - ${widget.endYear}",
                style: TextStyle(
                    color: isHovered ? Colors.white : AppColors.studio,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text(widget.locationOrPosition,
                  style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
