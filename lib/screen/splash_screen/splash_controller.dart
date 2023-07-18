import 'dart:async';

import 'package:code_master/screen/onboding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 5), () {
      Get.off(OnBoardingScreen());
    });
    // TODO: implement onInit
    super.onInit();
  }
}
