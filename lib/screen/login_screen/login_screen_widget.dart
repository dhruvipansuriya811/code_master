import 'package:code_master/common/common%20textfiled.dart';
import 'package:code_master/common/common_button.dart';
import 'package:code_master/common/common_text.dart';
import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/logo_container.dart';

Widget loginLogo = logoContainer(imageName: ImageRes.loginLogo);

Widget loginText = commonText(
  text: StringRes.loginLogoText,
  fontFamily: "Poppins",
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

Widget loginEmailTextField = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return commonTextFiled(
      textFiledName: StringRes.email,
      fontSize: 18,
      hintText: StringRes.email,
      fontFamily: "Poppins",
      controller: controller.emailController,
    );
  },
);

Widget loginPasswordTextField = GetBuilder<LoginScreenController>(
  id: "changeSignUpEyeValue",
  builder: (controller) {
    return commonTextFiled(
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

Widget loginScreenLoginButton = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return containerButton(
      onTap: controller.loginToDesBoard,
      data: StringRes.loginButton,
      height: Get.height / 18,
      width: Get.width / 1.5,
    );
  },
);

Widget forgotPasswordButton = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return GestureDetector(
      onTap: () {},
      child: commonText(
        text: StringRes.forgotPass,
        fontFamily: "Poppins-Light",
        textColor: ColorRes.purpleDark,
        fontSize: Get.height / 50,
        fontWeight: FontWeight.w500,
      ),
    );
  },
);

Widget goToSignUp = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        commonText(
          text: StringRes.dontHaveAccount,
          fontFamily: "Poppins-Light",
          textColor: ColorRes.blackColor,
          fontSize: Get.height / 50,
          fontWeight: FontWeight.w400,
        ),
        commonText(
          text: StringRes.signUp,
          fontFamily: "Poppins-Light",
          fontSize: Get.height / 50,
          textColor: ColorRes.purpleDark,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  },
);
