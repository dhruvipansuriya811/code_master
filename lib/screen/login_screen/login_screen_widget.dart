import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget loginBackGroundContainer() {
  return Container(
    height: Get.height,
    width: Get.width,
    color: ColorRes.purpleLight2,
  );
}

Widget loginScreenLottieContainer() {
  return Container(
    height: Get.height / 2,
    width: Get.width,
    decoration: BoxDecoration(
      border: Border.all(color: ColorRes.purpleDark, width: 2),
      color: ColorRes.weightColor,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
    ),

  );
}

Widget loginScreenTextFiledContainer = GetBuilder<LoginScreenController>(
  builder: (controller) => Container(
    height: Get.height/2,
    width: Get.width,
    decoration: BoxDecoration(
      color: ColorRes.purpleLight,
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);
