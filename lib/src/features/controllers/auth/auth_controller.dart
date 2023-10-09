import 'package:get/get.dart';

class AuthController extends GetxController{
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  void initAuth() async{
    await Future.delayed(const Duration(milliseconds: 1500));
    navigateTointroduction();
  }

  void navigateTointroduction(){
    Get.offAllNamed("/Welcome");
  }
}