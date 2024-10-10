import 'dart:math' as math;

import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 50),
          duration: const Duration(milliseconds: 300),
          transform: Matrix4.rotationZ(isHovered ? 0 : math.pi / 25),
          height: widget.size.width * 0.25,
          width: widget.size.width * 0.25,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: AppColors.studio),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: const DecorationImage(
              image: AssetImage(Assets.profileNewImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
