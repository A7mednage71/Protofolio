import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/models/skill_model.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class SkillItem extends StatefulWidget {
  const SkillItem({super.key, required this.size, required this.skill});
  final Size size;
  final SkillModel skill;

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  bool isHover = false;
  setHoverState(bool state) {
    setState(() => isHover = state);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => setHoverState(!isHover),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (event) => setHoverState(true),
            onExit: (event) => setHoverState(false),
            child: Container(
                width: widget.size.width * 0.13,
                decoration: BoxDecoration(
                  color: AppColors.experienceItemBackground,
                  border: Border.all(
                    color: isHover ? Colors.white : AppColors.studio,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(widget.skill.logo,
                          height: widget.size.height * 0.1),
                      Text(widget.skill.percentage,
                          style: TextStyle(
                            color: isHover ? Colors.white : AppColors.studio,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                )),
          ),
        ),
        SizedBox(height: widget.size.height * 0.01),
        Text(widget.skill.title,
            style: TextStyle(
              color: isHover ? Colors.white : AppColors.studio,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
