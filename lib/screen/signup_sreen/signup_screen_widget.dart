import 'package:code_master/common/common%20textfiled.dart';
import 'package:code_master/common/common_button.dart';
import 'package:code_master/common/common_text.dart';
import 'package:code_master/common/logo_container.dart';
import 'package:code_master/screen/signup_sreen/signup_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget signUpLogo = logoContainer(imageName: ImageRes.loginLogo);


Widget signUpText = commonText(
  fontWeight: FontWeight.bold,
  text: StringRes.loginLogoText,
  fontFamily: "DMSerifDisplay-Regular",
  letterSpacing: 1,
  fontSize: Get.height / 40,
);


Widget signUpNameTextField = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return commonTextFiled( prefixIcon: IconRes.person,
      textFiledName: StringRes.name,
      fontSize: 18,
      hintText: StringRes.name,
      fontFamily: "Poppins",
      controller: controller.nameController,
    );
  },
);

Widget signUpEmailController = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.email,
      textFiledName: StringRes.email,
      fontSize: 18,
      hintText: StringRes.email,
      fontFamily: "Poppins",
      controller: controller.emailController,
    );
  },
);


Widget signUpPasswordTextField = GetBuilder<SignUpScreenController>(
  id: "changeSignUpEyeValue",
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.password,
      obscureText: controller.signEyeValue,
      suffixIcon:
      controller.signEyeValue ? IconRes.unVisibility : IconRes.visibility,
      textFiledName: StringRes.password,
      fontSize: 18,
      hintText: StringRes.password,
      fontFamily: "Poppins",
      controller: controller.passwordController,
      suffixIconOnPressed: controller.changeSignUpEyeValue,
    );
  },
);


Widget signUpPhoneController = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.phoneNum,
      textFiledName: StringRes.phone,
      fontSize: 18,
      hintText: StringRes.phone,
      fontFamily: "Poppins",
      controller: controller.phoneController,
    );
  },
);

Widget signUpButton = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return containerButton(
      onTap: controller.loginToBackScreen,
      data: StringRes.signUp,
      height: Get.height / 18,
      width: Get.width / 1.5,
    );
  },
);




Widget goToSignIn = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        commonText(
          text: StringRes.alreadyHaveAnAccount,
          fontFamily: "Poppins-Light",
          textColor: ColorRes.blackColor,
          fontSize: Get.height / 50,
          fontWeight: FontWeight.w400,
        ),
        GestureDetector(
          onTap: controller.signUpToSignIn,
          child: commonText(
            text: StringRes.login,
            fontFamily: "Poppins-Light",
            fontSize: Get.height / 50,
            textColor: ColorRes.purpleDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  },
);



