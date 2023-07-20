import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/onboarding_screen/onboarding_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

//.................onBoarding pageView...................//

Widget onBoardingPageView = GetBuilder<OnBoardingController>(
  builder: (controller) {
    return PageView(
      children: [
        onBoardingColumn(
            lottieName: ImageRes.onBoardingLottie1,
            onBoardingText: StringRes.letsLearn),
        onBoardingColumn(
            lottieName: "assets/images/animation_lkazxx8p.json",
            onBoardingText: StringRes.somethingNew),
        onBoardingColumn(
            lottieName: ImageRes.onBoardingLottie3,
            onBoardingText: StringRes.letsStart),
      ],
      onPageChanged: (index) {
        controller.onPageChange(index);
      },
    );
  },
);

Widget onBoardingColumn({
  required String lottieName,
  required String onBoardingText,
}) {
  return Column(
    //crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Lottie.asset(lottieName),
      SizedBox(height:Get.height/50 ,),
      Text(onBoardingText),
    ],
  );
}

//.......................onBoarding common dot row........................//

Widget commonDotRow = GetBuilder<OnBoardingController>(
  id: 'dotUpdate',
  builder: (controller) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      //    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        commonDot(index: 0, pageIndex: controller.onBoardingPageIndex),
        widthSizeBox(Get.width / 40),
        commonDot(index: 1, pageIndex: controller.onBoardingPageIndex),
        widthSizeBox(Get.width / 40),
        commonDot(index: 2, pageIndex: controller.onBoardingPageIndex),
      ],
    );
  },
);

//.......................onBoarding common dot........................//

Widget commonDot({required int index, required int pageIndex}) {
  return AnimatedContainer(
    duration: const Duration(microseconds: 700000),
    height: Get.height / 80,
    width: index == pageIndex ? Get.width * 0.07 : Get.width * 0.03,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: index == pageIndex ? Colors.black : Colors.grey,
    ),
  );
}
