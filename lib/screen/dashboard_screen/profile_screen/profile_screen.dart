import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileScreenController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Get.height / 45),
        child: Column(
          children: [
            heightSizeBox(Get.height / 50),
            profileScreenImageContainer,
            heightSizeBox(Get.height / 40),
            Divider(
              endIndent: Get.width / 17,
              indent: Get.width / 17,
              //  color: ColorRes.purpleLight,
            ),
            Expanded(
              child: profileScreenCard,
            ),
          ],
        ),
      ),
    );
  }
}
