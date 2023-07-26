import 'package:animation_list/animation_list.dart';
import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_controller.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget homeScreenAllTopicContainer = GetBuilder<HomeScreenController>(
  builder: (controller) => Column(
    children: [
      Expanded(
        child: AnimationList(
          padding: EdgeInsets.all(Get.width / 90),
          children: List.generate(
            controller.cLanguageAllTopicList.length,
            (index) => Container(
              height: Get.height / 10,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                gradient: LinearGradient(
                  colors: index % 2 == 0
                      ? [ColorRes.purpleLight, ColorRes.purpleLight2]
                      : [ColorRes.purpleLight2, ColorRes.purpleLight],
                ),
              ),
              child: Center(
                child: Text(
                  controller.cLanguageAllTopicList[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Get.height / 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins-Light",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      heightSizeBox(Get.height / 10.5),
    ],
  ),
);
