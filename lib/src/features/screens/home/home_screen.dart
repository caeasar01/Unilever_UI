import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:unilever_app/src/common_widgets/home/home_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';
import 'package:unilever_app/src/common_widgets/signin/signin_custom_widgets.dart';
import 'package:unilever_app/src/const/image_string.dart';

import '../../../common_widgets/product/custom_product_tile_I.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return  CustomScaffold(
      contentWidgets: [
        kAppBar(),
        kSlider(),
        kSpacing(),
        kHomeTabs(),
      ]);
}
}