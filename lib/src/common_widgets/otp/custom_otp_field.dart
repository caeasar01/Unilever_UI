import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/features/controllers/routing_controller.dart';
import 'package:unilever_app/src/features/screens/home/home_screen.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RoutingController());
    return OTPTextField(
      onCompleted: (page) {controller.pageRouteController(const HomeScreen());
      },
      fieldWidth:MediaQuery.of(context).size.width * 0.15,
      length: 6,
      keyboardType: TextInputType.number,
      fieldStyle: FieldStyle.box,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.white,
        borderColor: Colors.white,
      ),
      width: double.infinity,
      textFieldAlignment:MainAxisAlignment.spaceBetween,
      outlineBorderRadius: 0,


    );
  }
}