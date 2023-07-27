import 'package:animation_list/animation_list.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profileScreenImageContainer = GetBuilder<ProfileScreenController>(
  builder: (controller) {
    return CircleAvatar(
      backgroundImage: AssetImage(ImageRes.loginLogo),
      radius: 80,
    );
  },
);

Widget profileScreenListContainer = GetBuilder<ProfileScreenController>(
  builder: (controller) => Expanded(
    child: AnimationList(
      padding: EdgeInsets.all(Get.width / 90),
      children: List.generate(
        controller.profileScreenList.length,
        (index) => Container(
          height: Get.height / 15,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: ColorRes.purpleLight,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            // gradient: LinearGradient(
            //   colors: index % 2 == 0
            //       ? [
            //           ColorRes.purpleLight,
            //           ColorRes.purpleLight2,
            //         ]
            //       : [
            //           ColorRes.purpleLight2,
            //           ColorRes.purpleLight,
            //         ],
            // ),
          ),
          child: Center(
            child: Text(
              controller.profileScreenList[index],
              style: TextStyle(
                color: Colors.black,
                fontSize: Get.height / 45,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Light",
              ),
            ),
          ),
        ),
      ),
    ),
  ),
  //heightSizeBox(Get.height / 10.5),
);
