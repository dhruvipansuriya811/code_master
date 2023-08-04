import 'package:animation_list/animation_list.dart';
import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors_res.dart';

Widget homeScreenAllTopicContainer = GetBuilder<HomeScreenController>(
  builder: (controller) => Column(
    children: [
      Expanded(
        child: AnimationList(
          duration: 2000,
          padding: EdgeInsets.all(Get.width / 90),
          children: List.generate(
            controller.cLanguageAllTopicList.length + 1,
            (index) => index == controller.cLanguageAllTopicList.length
                ? heightSizeBox(Get.height / 10.5)
                : Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width / 50,
                      vertical: Get.height / 95,
                    ),
                    child: Container(
                      height: Get.height / 10,
                      // margin: EdgeInsets.symmetric(
                      //     horizontal: Get.width / 50, vertical: Get.height / 95),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        // gradient: LinearGradient(
                        //   colors: index % 2 == 0
                        //       ? [ColorRes.purpleLight, ColorRes.purpleLight2]
                        //       : [ColorRes.purpleLight2, ColorRes.purpleLight],
                        // ),
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
      ),
    ],
  ),
);
