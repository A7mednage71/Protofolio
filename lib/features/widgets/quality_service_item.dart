import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/models/quality_service_model.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class QualityServiceItem extends StatefulWidget {
  const QualityServiceItem({
    super.key,
    required this.size,
    required this.item,
  });
  final Size size;

  final MapEntry<int, QualityServiceModel> item;

  @override
  State<QualityServiceItem> createState() => _QualityServiceItemState();
}

class _QualityServiceItemState extends State<QualityServiceItem> {
  bool isHovered = false;
  sethoverState(bool bool) {
    setState(() {
      isHovered = bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        sethoverState(!isHovered);
      },
      child: MouseRegion(
        onEnter: (event) => sethoverState(true),
        onExit: (event) => sethoverState(false),
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.02),
          padding: const EdgeInsets.all(10),
          duration: const Duration(milliseconds: 300),
          // height: widget.size.height * 0.12,
          width: double.infinity,
          decoration: isHovered ? AppStyles.gradientServiceBackground : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text(
                      "0${widget.item.key + 1}",
                      style: TextStyle(
                        color:
                            isHovered ? AppColors.paleSlate : AppColors.studio,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.size.width * 0.025,
                      ),
                    ),
                    SizedBox(width: widget.size.width * 0.01),
                    Flexible(
                      child: Text(
                        widget.item.value.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.size.width * 0.021,
                          fontWeight: FontWeight.bold,
                          // overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: widget.size.width * 0.01),
              Expanded(
                flex: 3,
                child: Text(
                  widget.item.value.description,
                  style: TextStyle(
                      color: Colors.white, fontSize: widget.size.width * 0.015),
                ),
              ),
              SizedBox(width: widget.size.width * 0.01),
              Icon(
                isHovered
                    ? FontAwesomeIcons.arrowTrendUp
                    : FontAwesomeIcons.arrowTrendDown,
                color: isHovered ? AppColors.paleSlate : AppColors.studio,
              ),
              SizedBox(width: widget.size.width * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
