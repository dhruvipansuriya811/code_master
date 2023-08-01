import 'package:code_master/common/common_sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_button.dart';
import '../../common/common_textfield.dart';
import '../../utils/assets_res.dart';
import '../../utils/colors_res.dart';
import '../../utils/string_res.dart';
import 'forgot_password_screen_controller.dart';

Widget forgotPassRow = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return Row(
      children: [
        Container(
          height: Get.height / 17,
          width: Get.width / 8,
          decoration: BoxDecoration(
            color: ColorRes.purplePassContainerColour,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: controller.forgotPassArrow,
            icon: const Icon(
              IconRes.backArrow,
              color: ColorRes.purpleDark,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Get.width / 10),
          child: Text(
            StringRes.forgotPassword,
            style: TextStyle(fontFamily: "Poppins", fontSize: Get.height / 40),
          ),
        ),
      ],
    );
  },
);

Widget forgotPassImage = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return  CircleAvatar(
        radius: Get.width/4,
      backgroundImage: AssetImage(ImageRes.forgotPass),
    );
  },
);

Widget forPassText = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return Column(
      children: [
         Text(
          StringRes.emailText,
          style: TextStyle(fontSize: Get.width/20, fontWeight: FontWeight.bold),
        ),
        heightSizeBox(10),
         Text(
          StringRes.emailText2,
          style: TextStyle(
            fontSize: Get.width/25,
            fontFamily: "Poppins-Light",
          ),
        ),
         Text(
          StringRes.emailText3,
          style: TextStyle(
            fontSize: Get.width/25,
            //fontWeight: FontWeight.bold,
            fontFamily: "Poppins-Light",
          ),
        ),
      ],
    );
  },
);

Widget forgotPassEmail = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.email,
      textFiledName: StringRes.forgotPassEmail,
      fontSize: Get.width/20,
      hintText: StringRes.email,
      fontFamily: "Poppins",
      controller: controller.emailController,
    );
  },
);

Widget forgotPassButton = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return containerButton(
      onTap: controller.gotoOtpVerificationScreen,
      data: StringRes.send,
      height: Get.height / 18,
      width: Get.width / 1.5,
    );
  },
);
