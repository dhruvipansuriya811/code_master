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
    return const CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage(ImageRes.forgotPass),
    );
  },
);

Widget forPassText = GetBuilder<ForgotPassController>(
  builder: (controller) {
    return Column(
      children: [
        const Text(
          StringRes.emailText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        heightSizeBox(10),
        const Text(
          StringRes.emailText2,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Poppins-Light",
          ),
        ),
        const Text(
          StringRes.emailText3,
          style: TextStyle(
            fontSize: 15,
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
      fontSize: 18,
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
