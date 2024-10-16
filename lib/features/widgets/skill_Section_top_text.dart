import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';

class SkillsSectionTopText extends StatelessWidget {
  const SkillsSectionTopText({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        "My skills in app development allow me to create innovative and efficient solutions. I'm always eager to learn and improve,\nensuring I stay updated with the latest technologies.",
        style: TextStyle(
            color: Colors.white,
            fontSize: size.width < SizeConfig.tablet
                ? size.width * 0.035
                : size.width * 0.015),
        textAlign: TextAlign.center,
      ),
    );
  }
}
