import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/common/common_button.dart';
import 'package:code_master/screen/onboarding_screen/onboarding_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

//.................onBoarding pageView...................//

Widget onBoardingPageView = GetBuilder<OnBoardingController>(
  id: 'pageChange',
  builder: (controller) {
    return PageView(
      controller: controller.pageController,
      children: [
        onBoardingColumn(
          lottieName: ImageRes.onBoardingLottie1,
          onBoardingText: StringRes.letsLearn,
        ),
        onBoardingColumn(
          lottieName: ImageRes.onBoardingLottie2,
          onBoardingText: StringRes.somethingNew,
        ),
        onBoardingColumn(
          lottieName: ImageRes.onBoardingLottie3,
          onBoardingText: StringRes.letsStart,
        ),
      ],
      onPageChanged: (index) {
        controller.onPageChange(index);
      },
    );
  },
);

//.................onBoarding pageColumn...................//

Widget onBoardingColumn({
  required String lottieName,
  required String onBoardingText,
}) {
  return Column(
    children: [
      heightSizeBox(Get.height / 20),
      Lottie.asset(lottieName),
      SizedBox(height: Get.height / 50),
      Text(
        onBoardingText,
        style: TextStyle(
          fontFamily: "DMSerifDisplay-Regular",
          fontSize: Get.width / 15,
          letterSpacing: 3,
          fontWeight: FontWeight.bold,
        ),
      ),
      heightSizeBox(Get.height / 40),
      Text(
        "Easy and simple way of learning C Programming",
        style: TextStyle(
          fontSize: Get.width / 28,
          fontFamily: "DMSerifDisplay-Regular",
        ),
      ),
    ],
  );
}

//.................onBoarding TextButton...................//

Widget onBoardingTextButton = GetBuilder<OnBoardingController>(
  id: 'skipButton',
  builder: (controller) => TextButton(
    onPressed: () {
      controller.moveToNextScreen();
    },
    child: Text(
      controller.onBoardingPageIndex == 0 || controller.onBoardingPageIndex == 1
          ? StringRes.skip
          : StringRes.continueText,
      style: const TextStyle(
        fontSize: 18,
        color: Color(0XFF8B4EFF),
        fontFamily: "DMSerifDisplay-Regular",
      ),
    ),
  ),
);

//.......................onBoarding common dot row........................//

Widget commonDotRow = GetBuilder<OnBoardingController>(
  id: 'dotUpdate',
  builder: (controller) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
      color: index == pageIndex
          ? const Color(0XFF8B4EFF)
          : const Color(0XFFE2D3FE),
    ),
  );
}

Widget onBoardingNextButton = GetBuilder<OnBoardingController>(
  id: "nextButton",
  builder: (controller) => containerButton(
    height: Get.height / 18,
    width: Get.width / 2,
    data: controller.onBoardingPageIndex == 0 ||
            controller.onBoardingPageIndex == 1
        ? StringRes.next
        : StringRes.getStarted,
    onTap: () {
      controller.onBoardingPageIndex == 0 || controller.onBoardingPageIndex == 1
          ? controller.pageChangeNextButton()
          : controller.moveToNextScreen();
    },
  ),
);
