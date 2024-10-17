import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: AppStyles.gradientBackground,
      ),
      backgroundColor: AppColors.ebony,
      title: const Text(
        "Portfolio",
        style: TextStyle(color: Colors.white),
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
    );
  }
}
