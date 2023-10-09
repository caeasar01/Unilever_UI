import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/features/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashScreenController(),);
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: AppColorTheme.lightColorTheme.primary,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(logoImage),color: Colors.white,),
        ],
      ),
    );
  }
}