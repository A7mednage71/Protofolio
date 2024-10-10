import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/features/widgets/count_widget.dart';

class CountWidgetsListMobile extends StatelessWidget {
  const CountWidgetsListMobile({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: DumyLists.countItems
          .asMap()
          .entries
          .map((item) => Column(
                children: [
                  if (item.key != 0)
                    const Divider(
                      color: Colors.white,
                      thickness: 1,
                      indent: 70,
                      endIndent: 70,
                    ),
                  SizedBox(height: size.height * 0.04),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CountWidget(
                        size: size,
                        bottomText: item.value.bottomText,
                        topText: item.value.topText,
                        value: item.value.value),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
