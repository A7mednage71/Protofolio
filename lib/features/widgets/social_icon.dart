import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIconWidget extends StatelessWidget {
  const SocialIconWidget({super.key, required this.icon, required this.url});
  final IconData icon;
  final String url;
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
          onPressed: () async {
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
              log("Launched");
            } else {
              log('Could not launch');
            }
          },
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
