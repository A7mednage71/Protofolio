import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  bool isHovered = false;
  sethoverState(bool bool) {
    setState(() {
      isHovered = bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = widget.size.width < SizeConfig.tablet;
    return InkWell(
      onTap: () => sethoverState(!isHovered),
      child: MouseRegion(
        onEnter: (event) => sethoverState(true),
        onExit: (event) => sethoverState(false),
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 20),
          duration: const Duration(milliseconds: 300),
          transform: Matrix4.rotationZ(isHovered ? 0 : math.pi / 36),
          height:
              isMobile ? widget.size.width * 0.40 : widget.size.width * 0.25,
          width: isMobile ? widget.size.width * 0.40 : widget.size.width * 0.25,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: AppColors.studio),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: const DecorationImage(
              image: AssetImage(Assets.projectImage2),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
