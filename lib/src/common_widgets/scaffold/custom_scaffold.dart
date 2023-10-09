import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/const/size.dart';

import '../../const/text_string.dart';
import '../nav_bar/custom_nav_bar.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar; 
  final double? scaffoldPadding;
  final Color? sbgColor;
  final Widget navBar;
  final List<Widget> contentWidgets;
  const CustomScaffold({super.key, required this.contentWidgets, this.navBar = const CustomNavBar(), this.sbgColor, this.scaffoldPadding, this.appBar,});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        backgroundColor: sbgColor?? Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.only(left: scaffoldPadding ?? paddingLeft,right: scaffoldPadding?? paddingRight),
          child: Column(
            children: contentWidgets
          ),
        ),
        bottomNavigationBar: navBar,
      ),
    );
  }
}


