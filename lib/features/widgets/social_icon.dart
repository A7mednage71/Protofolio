import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class SocialIconWidget extends StatelessWidget {
  const SocialIconWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.studio,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: IconButton(
          hoverColor: AppColors.paleSlate,
          onPressed: () {},
          icon: FaIcon(
            icon,
            color: AppColors.studio,
            size: 16,
          ),
        ),
      ),
    );
  }
}
