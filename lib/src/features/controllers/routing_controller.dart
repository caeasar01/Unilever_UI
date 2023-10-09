

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/routing/routing.dart';

class RoutingController extends GetxController{
  static RoutingController get find => Get.find();

pageRouteController(String? page) {
  Get.to(()=> page, transition: Transition.zoom,duration: const Duration(seconds: 1));
}
}