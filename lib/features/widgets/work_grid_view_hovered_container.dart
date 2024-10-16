import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/models/recent_work_model.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class MyWorkGridItemHoveredContainer extends StatelessWidget {
  const MyWorkGridItemHoveredContainer({
    super.key,
    required this.width,
    required this.height,
    required this.work,
  });

  final double width;
  final double height;
  final RecentWorkModel work;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.studio,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        work.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.05),
                      ),
                    ),
                    Text(
                      "Click To Visit",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: width * 0.04),
                    ),
                  ],
                ),
              ),
              Icon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
                size: width * 0.03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
