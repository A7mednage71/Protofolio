import 'package:flutter/material.dart';
import 'package:portfolio/core/models/count_widget_model.dart';
import 'package:portfolio/features/widgets/count_widget.dart';

class CountWidgetsList extends StatelessWidget {
  CountWidgetsList({super.key, required this.size});

  final Size size;

  final List<CountWidgetModel> items = [
    CountWidgetModel(
        topText: "Years of", bottomText: "Experience", value: "14"),
    CountWidgetModel(topText: "Project", bottomText: "Completed", value: "50+"),
    CountWidgetModel(topText: "Happy", bottomText: "Clients", value: "1.5K"),
    CountWidgetModel(topText: "Stars in", bottomText: "Github", value: "250"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items
          .asMap()
          .entries
          .map((item) => Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: item.key == 0 || item.key == items.length - 1
                        ? size.width * 0.07
                        : 0),
                child: CountWidget(
                    size: size,
                    bottomText: item.value.bottomText,
                    topText: item.value.topText,
                    value: item.value.value),
              ))
          .toList(),
    );
  }
}
