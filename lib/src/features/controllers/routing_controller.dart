

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutingController extends GetxController{
  static RoutingController get find => Get.find();

pageRouteController(page) {
  Get.to(page, transition: Transition.zoom,duration: const Duration(seconds: 1));
}
}