import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/slider/customslider.dart';
import 'package:unilever_app/src/const/text_string.dart';

Widget kAppBar(){
  return const CustomAppBar(appBarTittle: home);
}

Widget kSlider(){
  return const CustomSlider();
}