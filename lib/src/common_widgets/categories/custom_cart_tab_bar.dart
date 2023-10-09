import 'package:flutter/material.dart';

import '../../const/size.dart';

class CatTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> tabContents;
  final TabController controller;
  const CatTabBar({super.key, required this.tabs, required this.tabContents, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
              height: 80,
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                tabs: tabs,
                controller: controller,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Theme.of(context).primaryColor,
                unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
              )),
          const SizedBox(
            height: paddingLeft,
          ),
          Expanded(
              child: TabBarView(controller: controller, children: tabContents))
        ],
      ),
    );
  }
}