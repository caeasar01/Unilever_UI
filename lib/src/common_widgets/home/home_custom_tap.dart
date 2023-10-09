import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/features/controllers/home_tabs-controller.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Widget> tabs;
  final List<Widget> tabContents;
  const CustomTabBar(
      {super.key,
      required this.tabs,
      required this.tabContents,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
              height: 45,
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
