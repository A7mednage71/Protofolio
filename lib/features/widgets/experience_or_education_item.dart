import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
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
    bool isMobile = widget.size.width < SizeConfig.tablet;
    bool isTablet = widget.size.width < SizeConfig.desktop;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => sethoverState(true),
      onExit: (event) => sethoverState(false),
      child: Container(
        width: isMobile ? widget.size.width : widget.size.width * 0.4,
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
                    fontSize: isMobile
                        ? widget.size.width * 0.03
                        : isTablet
                            ? widget.size.width * 0.016
                            : widget.size.width * 0.012,
                    fontWeight: FontWeight.bold),
              ),
              Text(widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile
                          ? widget.size.width * 0.04
                          : widget.size.width * 0.019)),
              Text(widget.locationOrPosition,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile
                          ? widget.size.width * 0.03
                          : isTablet
                              ? widget.size.width * 0.016
                              : widget.size.width * 0.012)),
            ],
          ),
        ),
      ),
    );
  }
}
