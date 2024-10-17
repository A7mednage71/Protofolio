import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
    required this.sectionKeys,
  });
  final List<GlobalKey> sectionKeys;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.ebony,
      child: MobileDrawerList(sectionKeys: sectionKeys),
    );
  }
}

class MobileDrawerList extends StatelessWidget {
  const MobileDrawerList({
    super.key,
    required this.sectionKeys,
  });
  final List<GlobalKey> sectionKeys;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(height: size.height * 0.1),
        MobileDrawerItem(
          title: "Home",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[0]);
          },
        ),
        MobileDrawerItem(
          title: "Services",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[1]);
          },
        ),
        MobileDrawerItem(
          title: "Works",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[2]);
          },
        ),
        MobileDrawerItem(
          title: "Experience",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[3]);
          },
        ),
        MobileDrawerItem(
          title: "Education",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[4]);
          },
        ),
        MobileDrawerItem(
          title: "Skills",
          onTap: () {
            Navigator.pop(context);
            _scrollToSectionByKey(sectionKeys[5]);
          },
        ),
      ],
    );
  }

  // Function to scroll to widget using GlobalKey
  void _scrollToSectionByKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}

class MobileDrawerItem extends StatelessWidget {
  const MobileDrawerItem({
    super.key,
    this.onTap,
    required this.title,
  });
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
