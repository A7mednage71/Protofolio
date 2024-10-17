import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class AppBarHireMeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppBarHireMeButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width * 0.07,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
            colors: [
              AppColors.studio,
              AppColors.valhalla,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.012,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
