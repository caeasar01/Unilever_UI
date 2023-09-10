import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      
      fieldWidth:MediaQuery.of(context).size.width * 0.15,
      length: 6,
      keyboardType: TextInputType.number,
      fieldStyle: FieldStyle.box,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.white,
      ),
      width: double.infinity,
      textFieldAlignment:MainAxisAlignment.spaceBetween,
      outlineBorderRadius: 0,

    );
  }
}