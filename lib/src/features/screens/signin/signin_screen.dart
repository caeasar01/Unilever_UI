import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/signin/signin_custom_widgets.dart';
import 'package:unilever_app/src/const/text_string.dart';

import '../../../const/size.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: paddingLeft, right: paddingRight),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(signIn, style: Theme.of(context).textTheme.displayMedium,),
            const SizedBox(height: 200),
            Text(enterNumber, style: Theme.of(context).textTheme.titleMedium,),
            kSpacing(),
            kPhoneInputField(),
            kSpacing(),
            Text(quote, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
            kSpacing(),
            kNextButton(),
            kSpacing(),
            kOr(),
            kSpacing(),
            klogInWith(),
          ],
              ),
        ),),
    );
  }
}