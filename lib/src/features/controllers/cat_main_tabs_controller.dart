import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatMainTabsController extends GetxController with GetSingleTickerProviderStateMixin{
  static CatMainTabsController get find => Get.find();
  late TabController controller;

    @override
  void onInit(){
    getTabController(3);
    super.onInit();
  }

  @override
  void onClose(){
    controller.dispose();
    super.onClose();
  }


  getTabController (int length) {
    controller = TabController(length: length, vsync: this);
  }
}