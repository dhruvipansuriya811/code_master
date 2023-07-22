import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget logoContainer({required String imageName}) {
  return Container(
    height: Get.height / 5,
    width: Get.width / 2,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          imageName,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
