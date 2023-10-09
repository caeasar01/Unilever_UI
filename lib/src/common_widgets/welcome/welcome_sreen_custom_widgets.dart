import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_elevated_button.dart';
import 'package:unilever_app/src/common_widgets/buttons/custom_outlined_button_ii.dart';
import 'package:unilever_app/src/common_widgets/or_seperator/or_seperator_widget.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';
import 'package:unilever_app/src/features/controllers/routing_controller.dart';
import 'package:unilever_app/src/features/screens/signin/signin_screen.dart';

import '../buttons/custom_elevated_button_ii.dart';
import '../buttons/custom_outlined_button.dart';

Widget kLogo() {
  return const SizedBox(
    height: 200.00,
    width: 200.00,
    child: Image(
      image: AssetImage(logoImage),
      fit: BoxFit.cover,
    ),
  );
}

Widget kSignInBtn() {
  return CustomElevatedButton(
    btnRoute: const SignInScreen(),
      btnName: signIn,
      btnPosition: Alignment.center,
      btnWidth: double.infinity, btnColor: AppColorTheme.lightColorTheme.primary,);
}

Widget kOr(){
  return const CustomOrSperator();
}

Widget kSignInWithFacebook(){
  return CustomElevatedButtonII(btnName: "$signInWith $facebook", btnPosition: Alignment.center, btnIcon: const Icon(Icons.facebook_outlined) , btnColor: AppColorTheme.lightColorTheme.primary, );
}

Widget kSignInWithInstagram(){
  return CustomOutlinedButtonI(btnIcon: const Icon(Icons.person), btnlabel: "$signInWith $instagram", btnPosition: Alignment.center, btnColor: AppColorTheme.lightColorTheme.secondary,);
}






