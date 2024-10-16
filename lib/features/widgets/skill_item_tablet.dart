import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/core/models/skill_model.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class SkillItemTablet extends StatefulWidget {
  const SkillItemTablet({super.key, required this.size, required this.skill});
  final Size size;
  final SkillModel skill;

  @override
  State<SkillItemTablet> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItemTablet> {
  bool isHover = false;
  setHoverState(bool state) {
    setState(() => isHover = state);
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = widget.size.width < SizeConfig.tablet;
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => setHoverState(true),
          onExit: (event) => setHoverState(false),
          child: Container(
              width: isMobile
                  ? widget.size.width * 0.25
                  : widget.size.width * 0.16,
              decoration: BoxDecoration(
                color: AppColors.experienceItemBackground,
                border: Border.all(
                  color: isHover ? Colors.white : AppColors.studio,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.skill.logo,
                      height: widget.size.height * 0.08,
                    ),
                    // const Spacer(),
                    Text(widget.skill.percentage,
                        style: TextStyle(
                            color: isHover ? Colors.white : AppColors.studio,
                            fontWeight: FontWeight.bold,
                            fontSize: widget.size.width < SizeConfig.tablet
                                ? widget.size.width * 0.03
                                : widget.size.width * 0.02)),
                  ],
                ),
              )),
        ),
        Text(widget.skill.title,
            style: TextStyle(
                color: isHover ? Colors.white : AppColors.studio,
                fontWeight: FontWeight.bold,
                fontSize: widget.size.width < SizeConfig.tablet
                    ? widget.size.width * 0.03
                    : widget.size.width * 0.02))
      ],
    );
  }
}
