import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/home/home_custom_tap.dart';
import 'package:unilever_app/src/common_widgets/home/tab_II.dart';
import 'package:unilever_app/src/common_widgets/home/tab_view.dart';
import 'package:unilever_app/src/common_widgets/slider/customslider.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';
import 'package:unilever_app/src/features/controllers/home_tabs-controller.dart';

Widget kAppBar(){
  return const CustomAppBar(appBarTittle: home);
}

Widget kSlider(){
  return const CustomSlider();
}

Widget kHomeTabs(){
  final controller = Get.put(HomeTabsController());
  return CustomTabBar(
    controller: controller.tabcontroller,
    tabs: const [
      TabII(tabLabel: offer),
      TabII(tabLabel: recommended),
      TabII(tabLabel: popular),
    ], 
    tabContents: const [
      CustomTabViewI(productCart: offer, productName: toothPaste, productImage: logoImage),
      CustomTabViewI(productCart: recommended, productName: toothPaste, productImage: logoImage),
      CustomTabViewI(productCart: popular, productName: toothPaste, productImage: logoImage),
    ]);
}