
import 'package:get/get.dart';
import 'package:unilever_app/src/features/screens/signin/signin_screen.dart';
import 'package:unilever_app/src/features/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async{
    await Future.delayed(const Duration(seconds: 3 ),);
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 300),);

    Get.off(()=> const WelcomeScreen(), transition: Transition.zoom,duration: const Duration(microseconds: 500));
  }
}