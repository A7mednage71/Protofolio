import 'package:flutter/material.dart';

class CustomAppBarTab extends StatefulWidget {
  const CustomAppBarTab({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  State<CustomAppBarTab> createState() => _CustomAppBarTabState();
}

class _CustomAppBarTabState extends State<CustomAppBarTab> {
  bool isHover = false;
  sethoverState(bool bool) {
    setState(() {
      isHover = bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Create a TextPainter to measure the text size
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
          text: widget.text,
          style: TextStyle(color: Colors.white, fontSize: width * 0.013)),
      textDirection: TextDirection.ltr,
    );

    // Layout the text
    textPainter.layout();
    return MouseRegion(
      onEnter: (event) => sethoverState(true),
      onExit: (event) => sethoverState(false),
      cursor: SystemMouseCursors.click,
      child: TextButton(
        style: TextButton.styleFrom(
          overlayColor: Colors.transparent,
        ),
        onPressed: widget.onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.016,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            if (isHover)
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 2,
                color: Colors.white,
                width: textPainter.size.width,
              )
          ],
        ),
      ),
    );
  }
}
