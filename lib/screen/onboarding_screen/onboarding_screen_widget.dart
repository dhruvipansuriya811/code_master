import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/onboarding_screen/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

//.................onBoarding pageView...................//

Widget onBoardingPageView = GetBuilder<OnBoardingController>(
  builder: (controller) {
    return PageView(
      children: [
        Lottie.asset('assets/images/animation_lkasxg5b.json'),
        Container(color: Colors.teal),
        Container(color: Colors.grey),
      ],
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
    );
  },
);

//.......................onBoarding common dot row........................//

Widget commonDotRow = GetBuilder<OnBoardingController>(
  id: 'dotUpdate',
  builder: (controller) {
    return Row(
      children: [
        commonDot(index: 0, pageIndex: controller.onBoardingPageIndex),
        widthSizeBox(20),
        commonDot(index: 1, pageIndex: controller.onBoardingPageIndex),
        widthSizeBox(20),
        commonDot(index: 2, pageIndex: controller.onBoardingPageIndex),
      ],
    );
  },
);

//.......................onBoarding common dot........................//

Widget commonDot({required int index, required int pageIndex}) {
  return AnimatedContainer(
    duration: const Duration(microseconds: 700000),
    height: 8,
    width: index == pageIndex ? 35 : 15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: index == pageIndex ? Colors.black : Colors.white,
    ),
  );
}
