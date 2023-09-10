import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/welcome/welcome_sreen_custom_widgets.dart';
import 'package:unilever_app/src/const/size.dart';

import '../../../const/text_string.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: paddingLeft, right: paddingRight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kLogo(),
            const SizedBox(height: btnHeight,),
            kSignInBtn(),
            const SizedBox(height: btnHeight,),
            kOr(),
            const SizedBox(height: btnHeight,),
            Text("$signInWith $facebook & $instagram",style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: btnHeight,),
            kSignInWithFacebook(),
            const SizedBox(height: paddingLeft,),
            kSignInWithInstagram(),
          ],
        ),
      ),
    );
  }
}