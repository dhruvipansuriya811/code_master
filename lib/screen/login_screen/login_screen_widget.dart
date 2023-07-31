import 'package:code_master/common/common_button.dart';
import 'package:code_master/common/common_textfield.dart';
import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/logo_container.dart';

Widget loginLogo = logoContainer(imageName: ImageRes.loginLogo);

Widget loginText = Text(
  StringRes.loginLogoText,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    fontSize: Get.height / 40,
    fontFamily: "DMSerifDisplay-Regular",
  ),
);


Widget loginEmailTextField = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.phoneNum,
      textFiledName: StringRes.email,
      fontSize: 18,
      hintText: StringRes.email,
      fontFamily: "Poppins",
      controller: controller.emailController,
    );
  },
);

Widget loginPasswordTextField = GetBuilder<LoginScreenController>(
  id: "changeLogInEyeValue",
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.password,
      obscureText: controller.logInEyeValue,
      suffixIcon:
          controller.logInEyeValue ? IconRes.unVisibility : IconRes.visibility,
      textFiledName: StringRes.password,
      fontSize: 18,
      hintText: StringRes.password,
      fontFamily: "Poppins",
      controller: controller.passwordController,
      suffixIconOnPressed: controller.changeLoginEyeValue,
    );
  },
);

Widget loginScreenLoginButton = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return containerButton(
      onTap: controller.loginToDesBoard,
      data: StringRes.login,
      height: Get.height / 18,
      width: Get.width / 1.5,
    );
  },
);

Widget forgotPasswordButton = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return GestureDetector(
      onTap: controller.loginToForgotPassScreen,
      child: Text(
        StringRes.forgotPass,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
          fontSize: Get.height / 50,
          fontFamily: "Poppins-Light",
        ),
      ),
    );
  },
);

Widget goToSignUp = GetBuilder<LoginScreenController>(
  builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringRes.doNotHaveAccount,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: Get.height / 50,
            fontFamily: "Poppins-Light",
          ),
        ),
        GestureDetector(
          onTap: controller.loginToSignUp,
          child: Text(
            StringRes.signUp,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorRes.purpleDark,
              letterSpacing: 1,
              fontSize: Get.height / 50,
              fontFamily: "Poppins-Light",
            ),
          ),
        ),
      ],
    );
  },
);
