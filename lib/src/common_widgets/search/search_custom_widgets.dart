import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/search/search_field.dart';
import 'package:unilever_app/src/const/text_string.dart';


Widget kSearchAppBar(){
  return const CustomAppBar(appBarTittle: search);
}

Widget kSearchField(){
  return const CustomSearchField();
}

