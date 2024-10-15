import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size_config.dart';
import 'package:portfolio/features/desktop_layout/desktop_layout.dart';
import 'package:portfolio/features/mobile_layout/mobile_layout.dart';
import 'package:portfolio/features/tablet_layout/tablet_layout.dart';

class ProtofolioHomePage extends StatelessWidget {
  const ProtofolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return const MobileLayout();
        } else if (constraints.maxWidth <= SizeConfig.bigTablet) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}
