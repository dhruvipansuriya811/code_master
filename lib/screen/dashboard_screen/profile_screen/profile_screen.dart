import 'package:code_master/common/common_appbar.dart';
import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_widget.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  ProfileScreenController profileScreenController =
      Get.put(ProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(titleText: StringRes.profileScreen),
      body: Column(
        children: [
          heightSizeBox(Get.height/50),
          profileScreenImageContainer,
          heightSizeBox(Get.height/40),
          Divider(
            endIndent: Get.width / 17,
            indent: Get.width / 17,
            color: ColorRes.purpleLight,
          ),
        ],
      ),
    );
  }
}
