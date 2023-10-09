import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/padding.dart';
import 'package:unilever_app/src/common_widgets/nav_bar/custom_nav_bar_II.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';
import 'package:unilever_app/src/common_widgets/shopping_cart/shopping_cart_custom_widgets.dart';

import '../../../const/size.dart';

class ShoppingCartSreen extends StatelessWidget {
  const ShoppingCartSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffoldPadding: 0,
      contentWidgets: [
        kShoppingCartAppBar(),
        kCart(),
         Container(
    color: Theme.of(context).scaffoldBackgroundColor,
    padding: const EdgeInsets.all(paddingLeft),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total:"),
        Text("GHC 12,00.00")
      ],
    ),),
       Expanded(
         child: Container(
           color: Colors.white,
           width: double.infinity,
         
         ),
       )
      ],
      navBar: const CustomNavBarII(btnName: "Add more Basket",),
      );
  }
}