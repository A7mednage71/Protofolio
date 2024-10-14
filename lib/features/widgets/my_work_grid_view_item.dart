import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/features/widgets/work_grid_view_hovered_container.dart';

class MyWorkGridViewItem extends StatefulWidget {
  const MyWorkGridViewItem({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
  });

  final double cardWidth;
  final double cardHeight;

  @override
  State<MyWorkGridViewItem> createState() => _MyWorkGridViewItemState();
}

class _MyWorkGridViewItemState extends State<MyWorkGridViewItem> {
  bool isHovered = false;
  void changeHoveredState(bool value) {
    setState(() {
      isHovered = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => changeHoveredState(true),
      onExit: (event) => changeHoveredState(false),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(Assets.projectImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          if (isHovered)
            MyWorkGridItemHoveredContainer(
              height: widget.cardHeight * 0.3,
              width: widget.cardWidth,
            ),
        ],
      ),
    );
  }
}
