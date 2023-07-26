import 'package:code_master/screen/dashboard_screen/profile_screen/profile_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
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


