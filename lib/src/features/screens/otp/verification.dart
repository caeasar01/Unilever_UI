import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/otp/custom_otp_field.dart';
import 'package:unilever_app/src/common_widgets/signin/signin_custom_widgets.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/const/text_string.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: paddingLeft,right: paddingRight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 200,),
          Text(enterNumber, style: Theme.of(context).textTheme.displayLarge,),
          kSpacing(),
          Text(phoneNuber, style: Theme.of(context).textTheme.labelLarge,),
          const SizedBox(height: 100,),
          const CustomOtpField(),
          const SizedBox(height: 200,),
          Text(didntGetCode, style: Theme.of(context).textTheme.labelLarge,),
          kSpacing(),
          Text("$quote $privacyPolicy and $terms", style: Theme.of(context).textTheme.displaySmall,)
        ],
        ),
      ),
    );
  }
}