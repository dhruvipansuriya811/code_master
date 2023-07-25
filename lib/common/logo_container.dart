import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget logoContainer({required String imageName}) {
  return Container(
    height: Get.height / 5,
    width: Get.width / 1.5,
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
