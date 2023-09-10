import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/search/search_field.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';

import 'custom_brand_grid.dart';

Widget kBrandsAppBar(){
  return const CustomAppBar(appBarTittle: brand);
}

Widget kSearchBrands(){
  return const CustomSearchField();
}

Widget kBrands(){
  return const CustomBrandGrid(brandLogo: logoImage,);
}