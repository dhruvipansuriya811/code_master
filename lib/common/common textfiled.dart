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
  bool obscureText = false,
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
      Container(
        color: ColorRes.weightColor,
        child: TextField(
          controller: controller,
          obscuringCharacter: "*",
          obscureText: obscureText,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ColorRes.purpleDark, width: 1.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            suffixIcon: IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixIconOnPressed,
            ),
          ),
        ),
      ),
    ],
  );
}
