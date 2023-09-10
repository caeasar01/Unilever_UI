import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/const/size.dart';

import '../../const/text_string.dart';

class CustomScaffold extends StatelessWidget {
  final List<Widget> contentWidgets;
  const CustomScaffold({super.key, required this.contentWidgets,});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: paddingLeft,right: paddingRight),
          child: Column(
            children: contentWidgets
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar.badge(
        const{2:"24"},
        items: const [
          TabItem(icon:FontAwesomeIcons.house,title: home),
          TabItem(icon: FontAwesomeIcons.grip,title: category),
          TabItem(icon: FontAwesomeIcons.basketShopping),
          TabItem(icon: FontAwesomeIcons.magnifyingGlass,title: search),
          TabItem(icon: FontAwesomeIcons.bars,title: menu),
        ],
        badgeTextColor: AppColorTheme.lightColorTheme.primary,
        badgeBorderRadius: 20,
        badgeColor: Colors.white,
        style: TabStyle.fixedCircle,
        activeColor: Theme.of(context).primaryColor,
        badgeMargin: const EdgeInsets.only(top: 25, left: 15),
        backgroundColor: Colors.white,
        color: Colors.blueGrey,
        
        ),
    );
  }
}

