import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/app_bar/padding.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_elevated_button.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_outlined_button_ii.dart';
import 'package:unilever_app/src/common_widgets/invite_freinds/link_field.dart';
import 'package:unilever_app/src/common_widgets/shopping_cart/cart_item.dart';
import 'package:unilever_app/src/common_widgets/shopping_cart/custom_cart.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/const/text_string.dart';

Widget kShoppingCartAppBar (){
  return const CustomAppBar(appBarTittle: shoppingCart,);}


Widget kCart(){
  return const CustomCart();
}

Widget kAddToDeliveryButton(){
  return CustomOutlinedButtonII(btnlabel: addToDelivery, btnPosition:Alignment.bottomLeft , btnwidth: double.infinity *0.5, btnColor: AppColorTheme.lightColorTheme.primary);
}

Widget kCheckOutButton(){
  return CustomElevatedButton(btnName: "checkout GHC 12,00.00", btnPosition: Alignment.bottomRight, btnColor: AppColorTheme.lightColorTheme.primary);
}

Widget kCoupon(){
  return const CustomPadding(child: SizedBox(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Text("Total:"),
              Text("coupon -10%")
            ],
          ),
        ),
        Text("GHC 12,00.00")
      ],
    ),
  ), );
}

Widget kCouponField(){
  return const CustomLinkField();
}

