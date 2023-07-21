import 'package:code_master/common/commonbutton.dart';
import 'package:code_master/screen/onboarding_screen/onboarding_controller.dart';
import 'package:code_master/screen/onboarding_screen/onboarding_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/string_res.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            onBoardingPageView,
            Positioned(bottom: Get.height / 8, child: commonDotRow),
            Positioned(
                top: Get.height / 40,
                right: Get.width / 20,
                child: onBoardingTextButton),
            Positioned(bottom: Get.height / 40, child: onBoardingNextButton),

            // containerButton,
          ],
        ),
      ),
    );
  }
}
