import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../Utils/theme/color_theme.dart';
import '../../const/text_string.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar.badge(
      const{2:"24"},
      items: [
        const TabItem(icon:FontAwesomeIcons.house,title: home),
        const TabItem(icon: FontAwesomeIcons.grip,title: category),
        TabItem(icon: CircleAvatar(backgroundColor: Theme.of(context).primaryColor,child: const Icon(FontAwesomeIcons.basketShopping,),)),
        const TabItem(icon: FontAwesomeIcons.magnifyingGlass,title: search),
        const TabItem(icon: FontAwesomeIcons.bars,title: menu),
      ],
      badgeTextColor: AppColorTheme.lightColorTheme.primary,
      badgeBorderRadius: 20,
      badgeColor: Colors.white,
      style: TabStyle.fixedCircle,
      activeColor: Theme.of(context).primaryColor,
      badgeMargin: const EdgeInsets.only(top: 25, left: 15),
      backgroundColor: Colors.white, 
      color: Colors.blueGrey,
      );
  }
}