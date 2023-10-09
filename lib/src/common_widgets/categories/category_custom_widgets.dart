import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/home/home_custom_tap.dart';
import 'package:unilever_app/src/common_widgets/home/tab_I.dart';
import 'package:unilever_app/src/common_widgets/home/tab_II.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';
import 'package:unilever_app/src/features/controllers/cat_main_tabs_controller.dart';
import 'package:unilever_app/src/features/controllers/cat_sub_tabs_controller.dart';
import 'package:unilever_app/src/features/controllers/home_tabs-controller.dart';

import '../home/tab_view.dart';
import 'custom_cart_tab_bar.dart';

Widget kCatAppBar() {
  return const CustomAppBar(appBarTittle: category);
}

Widget kCartTabBar() {
  final controllerM = Get.put(CatMainTabsController());
  final ControllerS = Get.put(CatSubTabsController());
  return CatTabBar(
    controller: controllerM.tabcontroller,
    tabs: const [
      TabI(tabIcon: FontAwesomeIcons.house, tabName: home),
      TabI(tabIcon: FontAwesomeIcons.person, tabName: "personal Care"),
      TabI(
          tabIcon: FontAwesomeIcons.bowlFood, tabName: "food & \n Refreshment"),
    ],
    tabContents: [
      CustomTabBar(
          tabs: const [
            TabII(tabLabel: "Skin Cleaning"),
            TabII(tabLabel: "oral Care"),
            TabII(tabLabel: "Skin Care"),
          ], tabContents: const[
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
          ], controller: ControllerS.tabcontroller),
      CustomTabBar(
          tabs: const [
            TabII(tabLabel: "oral Care"),
            TabII(tabLabel: "Skin Care"),
            TabII(tabLabel: "Skin Cleaning"),
          ], tabContents: const [
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
          ], controller: ControllerS.tabcontroller),
      CustomTabBar(
          tabs: const [
            TabII(tabLabel: "Skin Care"),
            TabII(tabLabel: "Skin Cleaning"),
            TabII(tabLabel: "oral Care"),
          ], tabContents: const [
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            CustomTabViewI(productCart:"Skin", productImage: logoImage, productName: "productName",scrollDirection: Axis.horizontal,),
            
          ], controller: ControllerS.tabcontroller),
    ],
  );
}
