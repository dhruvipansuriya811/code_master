import 'dart:async';

import 'package:code_master/screen/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 2), () {
      Get.off(
        OnBoardingScreen(),
      );
    });
    // TODO: implement onInit
    super.onInit();
  }
}
