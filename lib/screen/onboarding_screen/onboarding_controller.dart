import 'package:code_master/screen/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  int onBoardingPageIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void onPageChange(int index) {
    onBoardingPageIndex = index;
    update(['dotUpdate', 'skipButton', 'nextButton']);
  }

  void moveToNextScreen() {
    Get.to(
      LoginScreen(),
    );
  }

  void pageChangeNextButton() {
    pageController.animateToPage(onBoardingPageIndex + 1,
        duration: const Duration(microseconds: 700000), curve: Curves.linear);
    update(['pageChange', 'skipButton', 'dotUpdate', 'nextButton']);
  }
}
