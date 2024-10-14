import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dumy_lists.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/widgets/my_recent_work_grid_view.dart';

class MyRecentWorksTabBar extends StatefulWidget {
  const MyRecentWorksTabBar({super.key, required this.size});
  final Size size;
  @override
  State<MyRecentWorksTabBar> createState() => _MyRecentWorksTabBarState();
}

class _MyRecentWorksTabBarState extends State<MyRecentWorksTabBar>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'Brands'),
              Tab(text: 'Apps'),
              Tab(text: 'Websites'),
            ],
            indicatorColor: AppColors.studio,
            labelColor: Colors.white,
            unselectedLabelColor: AppColors.paleSlate,
            indicatorSize: TabBarIndicatorSize.tab,
            tabAlignment: TabAlignment.center,
            controller: _tabController,
            dividerColor: const Color.fromRGBO(0, 0, 0, 0),
            indicator: BoxDecoration(
              color: AppColors.studio,
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                AppColors.studio,
                AppColors.valhalla,
              ]),
            ),
            onTap: (value) {
              _tabController.animateTo(value);
            },
          ),
          SizedBox(height: widget.size.height * 0.03),
          SizedBox(
            height: widget.size.height * 0.7,
            width: widget.size.width * 0.7,
            child: TabBarView(
              controller: _tabController,
              children: [
                MyRecentWorkGridView(
                    works: DumyLists.myRecentWorks, size: widget.size),
                MyRecentWorkGridView(works: const [], size: widget.size),
                MyRecentWorkGridView(
                    works: DumyLists.myRecentWorks
                        .where((e) => e.type == "Apps")
                        .toList(),
                    size: widget.size),
                MyRecentWorkGridView(
                    works: DumyLists.myRecentWorks
                        .where((e) => e.type == "Web Development")
                        .toList(),
                    size: widget.size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
