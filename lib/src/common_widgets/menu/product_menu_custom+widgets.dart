import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/product/custom_product_menu.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';

Widget kProductmenuAppBar (){
  return const CustomAppBar(appBarTittle: toothPaste);
}

Widget kproductMenu(){
  return const CustomProductMenu(productImage: logoImage, productName: "fcccjhvkhcgchgcjhcghjcchhcgchgjvhjvjvjvjcgvhchgchkjglglhhvhghvhvh");
}