import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget commonTextFiled({
  required String hintText,
  IconData? suffixIcon,
  required String textFiledName,
  void Function()? suffixIconOnPressed,
  required TextEditingController controller,
  double? fontSize,
  FontWeight? fontWeight,
  String? fontFamily,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: Get.width / 20),
        child: Text(
          textFiledName,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: "Poppins-Light",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      heightSizeBox(Get.height / 90),
      SizedBox(
        height: 50,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorRes.purpleDark, width: 1.5),
            ),
            contentPadding:
                EdgeInsets.only(bottom: Get.height / 15, left: Get.width / 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            suffix: IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixIconOnPressed,
            ),
          ),
        ),
      ),
    ],
  );
}
