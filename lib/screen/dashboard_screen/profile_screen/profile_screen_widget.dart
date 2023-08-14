import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profileScreenImageContainer = GetBuilder<ProfileScreenController>(
  builder: (controller) {
    return Container(
      height: Get.height / 5,
      width: Get.width / 2,
      child: Card(
        elevation: 2,
        child: Image(
          image: AssetImage(ImageRes.loginLogo),
        ),
      ),
    );
    //
    //
    // Container(
    //   height: Get.height / 5,
    //   width: Get.width / 2,
    //   child: Card(
    //     elevation: Get.height / 80,
    //     child: Image(
    //       image: AssetImage(ImageRes.loginLogo),
    //     ),
    //   ),
    // );
  },
);

Widget profileScreenCard = GetBuilder<ProfileScreenController>(
  builder: (controller) {
    return SingleChildScrollView(
      child: Column(
        children: controller.profileScreenList
            .map(
              (e) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Get.width / 40,top: Get.height/50),
                        child: Text(
                          e['title'],
                          style: TextStyle(
                            fontSize: Get.width / 23,
                            color: ColorRes.purpleDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  heightSizeBox(Get.height / 200),
                  Card(
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: Get.width / 35),
                      alignment: Alignment.centerLeft,
                      height: Get.height / 15,
                      width: double.infinity,
                      child: Text(
                        e['Data'],
                        style: TextStyle(
                          fontSize: Get.width / 22,
                          color: ColorRes.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList()
          ..add(
            Column(
              children: [
                heightSizeBox(Get.height / 10.5),
              ],
            ),
          ),
      ),
    );
  },
);
