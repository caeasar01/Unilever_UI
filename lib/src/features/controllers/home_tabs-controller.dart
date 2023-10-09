
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTabsController extends GetxController with GetSingleTickerProviderStateMixin{
  static HomeTabsController get find => Get.find();
  late TabController tabcontroller;

    @override
  void onInit(){
    getTabController(3);
    super.onInit();
  }

  @override
  void onClose(){
    tabcontroller.dispose();
    super.onClose();
  }


  getTabController (int length) {
    tabcontroller = TabController(length: length, vsync: this);
  }
}

