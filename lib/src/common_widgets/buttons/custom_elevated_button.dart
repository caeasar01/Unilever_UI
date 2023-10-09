import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/features/controllers/routing_controller.dart';
import 'package:unilever_app/src/features/screens/otp/verification.dart';
import 'package:unilever_app/src/routing/routing.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnName;
  final AlignmentGeometry btnPosition;
  final double btnWidth;
  final String? btnRoute;
  final Color btnColor;
  const CustomElevatedButton({super.key,required this.btnName, required this.btnPosition, this.btnRoute, this.btnWidth = double.infinity, required this.btnColor,});

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(RoutingController());
    return Align(
      alignment: btnPosition,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight),
          color: btnColor,
        ),
        child: ElevatedButton(
          onPressed: (){pageController.pageRouteController( btnRoute);},
          style: Theme.of(context).elevatedButtonTheme.style, 
          child: Text(btnName.toUpperCase()),
          ),
      ),
    );
  }
}