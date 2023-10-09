import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_elevated_button.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_outlined_button_ii.dart';
import 'package:unilever_app/src/common_widgets/input_fields/custom_signin_input_field.dart';
import 'package:unilever_app/src/common_widgets/or_seperator/or_seperator_widget.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/const/text_string.dart';
import 'package:unilever_app/src/features/screens/brands/brands_screen.dart';
import 'package:unilever_app/src/features/screens/home/home_screen.dart';
import 'package:unilever_app/src/features/screens/invite_friends/invite_friends_screen.dart';
import 'package:unilever_app/src/features/screens/otp/verification.dart';
import 'package:unilever_app/src/features/screens/shopping_cart/shopping_cart_sreen.dart';

import '../../features/controllers/routing_controller.dart';

Widget kNextButton(){
  return CustomElevatedButton(btnName: next.toUpperCase(), btnPosition: Alignment.center, btnColor: AppColorTheme.lightColorTheme.primary,btnWidth: double.infinity,btnRoute: "/Verification",);
}

Widget kOr(){
  return const CustomOrSperator();
}

Widget klogInWith(){
  return CustomOutlinedButtonII(btnlabel: "$logInWith $facebook/$instagram", btnPosition: Alignment.center, btnwidth: double.infinity, btnColor: AppColorTheme.lightColorTheme.primary);
}

Widget kSpacing(){
  return const SizedBox(height: paddingRight,);
}

Widget kPhoneInputField(){
  return const CustomSignInForm();
}