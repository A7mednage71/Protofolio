import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget(
      {super.key,
      required this.size,
      required this.topText,
      required this.bottomText,
      required this.value});
  final Size size;
  final String value;
  final String topText;
  final String bottomText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        Text("$topText\n$bottomText",
            style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
