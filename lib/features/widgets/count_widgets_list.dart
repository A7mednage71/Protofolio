import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_data.dart';
import 'package:portfolio/features/widgets/count_widget.dart';

class CountWidgetsList extends StatelessWidget {
  const CountWidgetsList({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: MyDummeyData.countItems
          .asMap()
          .entries
          .map((item) => Padding(
                padding: EdgeInsets.only(
                  right: item.key == MyDummeyData.countItems.length - 1
                      ? size.width * 0.07
                      : 0,
                  left: item.key == 0 ? size.width * 0.07 : 0,
                ),
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
