import 'package:animation_list/animation_list.dart';
import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_controller.dart';
import 'package:code_master/utils/data_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget homeScreenAllTopicContainer = GetBuilder<HomeScreenController>(
  id: "listOfData",
  builder: (controller) => Column(
    children: [
      Expanded(
        child: AnimationList(
          duration: 2000,
          padding: EdgeInsets.all(Get.width / 90),
          children: List.generate(
            DataRes.dataList.length + 1,
            (index) => index == DataRes.dataList.length
                ? heightSizeBox(Get.height / 10.5)
                : Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width / 50,
                      vertical: Get.height / 95,
                    ),
                    child: InkWell(
                      onTap: () => controller.onTapIndex(index),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Center(
                              child: Text(
                                DataRes.dataList[index]["title"].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.height / 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins-Light",
                                ),
                              ),
                            ),
                          ],
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
