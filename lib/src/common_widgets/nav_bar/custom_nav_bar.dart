import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:get/get.dart';

import '../../Utils/theme/color_theme.dart';
import '../../const/text_string.dart';
import '../../features/controllers/routing_controller.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(RoutingController());
    return ConvexAppBar.badge(
      const{2:"24",
      3:"50"},
      items: [
        TabItem(icon:InkWell(
          onTap: (){navController.pageRouteController("/Home");},
          child: const Icon(FontAwesomeIcons.house),
        ),title: home),
       TabItem(icon: InkWell(
          onTap: (){navController.pageRouteController("/Categories");},
          child: const Icon(FontAwesomeIcons.grip),),title: category),
        TabItem(icon: InkWell(
          onTap: () {
            navController.pageRouteController("/My Orders");
          },
          child: CircleAvatar(backgroundColor: Theme.of(context).primaryColor,child: const Icon(FontAwesomeIcons.basketShopping,),))),
        TabItem(icon: InkWell(
          onTap: (){navController.pageRouteController("/Search");},
          child: const Icon(FontAwesomeIcons.magnifyingGlass)),title: search),
        TabItem(icon: InkWell(
          onTap: (){navController.pageRouteController("/Menu");},
          child: const Icon(FontAwesomeIcons.bars),),title: menu),
      ],
      badgeTextColor: AppColorTheme.lightColorTheme.primary,
      badgeBorderRadius: 20,
      badgeColor: Colors.white,
      style: TabStyle.fixedCircle,
      activeColor: Theme.of(context).primaryColor,
      badgeMargin: const EdgeInsets.only(top: 25, left: 15),
      backgroundColor: Colors.white, 
      color: Colors.blueGrey,
      // controller: ,  
      );
  }
}