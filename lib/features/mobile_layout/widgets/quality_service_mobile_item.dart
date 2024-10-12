import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/models/quality_service_model.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class QualityServiceMobileItem extends StatefulWidget {
  const QualityServiceMobileItem({
    super.key,
    required this.size,
    required this.item,
  });
  final Size size;

  final MapEntry<int, QualityServiceModel> item;

  @override
  State<QualityServiceMobileItem> createState() => _QualityServiceMobileItem();
}

class _QualityServiceMobileItem extends State<QualityServiceMobileItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
        padding: const EdgeInsets.all(10),
        duration: const Duration(milliseconds: 300),
        height: widget.size.height * 0.25,
        width: double.infinity,
        decoration: isHovered ? AppStyles.gradientServiceBackground : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0${widget.item.key + 1}",
              style: TextStyle(
                color: isHovered ? AppColors.paleSlate : AppColors.studio,
                fontWeight: FontWeight.bold,
                fontSize: widget.size.width * 0.040,
              ),
            ),
            SizedBox(height: widget.size.height * 0.01),
            Text(
              widget.item.value.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.size.width * 0.035,
                fontWeight: FontWeight.bold,
                // overflow: TextOverflow.clip,
              ),
            ),
            SizedBox(height: widget.size.height * 0.01),
            Flexible(
              child: Text(
                widget.item.value.description,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                // maxLines: 3,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: widget.size.height * 0.006),
            Icon(
              isHovered
                  ? FontAwesomeIcons.arrowTrendUp
                  : FontAwesomeIcons.arrowTrendDown,
              color: isHovered ? AppColors.paleSlate : AppColors.studio,
            ),
          ],
        ),
      ),
    );
  }
}
