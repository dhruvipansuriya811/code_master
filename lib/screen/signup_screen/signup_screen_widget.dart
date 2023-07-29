import 'package:code_master/common/common_button.dart';
import 'package:code_master/common/common_radiobutton.dart';
import 'package:code_master/common/common_textfield.dart';
import 'package:code_master/common/logo_container.dart';
import 'package:code_master/screen/signup_screen/signup_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget signUpLogo = logoContainer(imageName: ImageRes.signUpLogo);

Widget signUpText = Text(
  StringRes.signUpLogoText,
  style: TextStyle(
    fontFamily: "DMSerifDisplay-Regular",
    letterSpacing: 1,
    fontSize: Get.height / 40,
    fontWeight: FontWeight.bold,
  ),
);

Widget signUpNameTextField = GetBuilder<SignUpScreenController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.person,
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


Widget signUpStudyColumn = GetBuilder<SignUpScreenController>(
  id: "signUpScreenStudyRadioButton",
  builder: (controller) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        StringRes.studyName,
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins-Light",
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: [
          commonRadioButton(
            value: controller.signUpRadioSchool,
            groupValue: controller.signUpStudyRadioGroupValue,
            onChanged: (value) {
              controller.signUpSchoolOnTap(value);
            },
          ),
          Text(
            StringRes.school,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signUpRadioCollage,
            groupValue: controller.signUpStudyRadioGroupValue,
            onChanged: (value) {
              controller.signUpCollageOnTap(value);
            },
          ),
          Text(
            StringRes.collage,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins-Light",
            ),
          ),


        ],
      )
    ],
  ),
);

// Widget signUpStudyController = GetBuilder<SignUpScreenController>(
//   builder: (controller) {
//     return commonTextFiled(
//       prefixIcon: IconRes.study,
//       textFiledName: StringRes.studyName,
//       fontSize: 18,
//       hintText: StringRes.study,
//       fontFamily: "Poppins",
//       controller: controller.studyController,
//     );
//   },
// );



Widget signUpRadioButtonColumn = GetBuilder<SignUpScreenController>(
  id: "signUpScreenRadioButton",
  builder: (controller) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        StringRes.genderName,
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins-Light",
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: [
          commonRadioButton(
            value: controller.signUpRadioMale,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpMaleOnTap(value);
            },
          ),
          Text(
            StringRes.male,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signUpRadioFemale,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpFemaleOnTap(value);
            },
          ),
          Text(
            StringRes.female,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signRadioOther,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpOtherOnTap(value);
            },
          ),
          Text(
            StringRes.other,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins-Light",
            ),
          ),
        ],
      )
    ],
  ),
);

Widget birthOfDate = GetBuilder<SignUpScreenController>(
  id: "datePicker",
  builder: (controller) {
    return commonTextFiled(
      onTap: () => controller.birthDateOnTap(),
      fontSize: 18,
      fontFamily: "Poppins",
      prefixIcon: IconRes.birthDate,
      hintText: StringRes.enterDate,
      textFiledName: StringRes.enterDate,
      controller: controller.birtDateController,
    );
  },
);

// Widget signUpgenderController = GetBuilder<SignUpScreenController>(
//   builder: (controller) {
//     return commonTextFiled(
//       prefixIcon: IconRes.person,
//       textFiledName: StringRes.genderName,
//       fontSize: 18,
//       hintText: StringRes.genederHintText,
//       fontFamily: "Poppins",
//       controller: controller.genderController,
//     );
//   },
// );

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
        Text(
          StringRes.alreadyHaveAnAccount,
          style: TextStyle(
            fontFamily: "Poppins-Light",
            fontSize: Get.height / 50,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: controller.signUpToSignIn,
          child: Text(
            StringRes.login,
            style: TextStyle(
              fontFamily: "Poppins-Light",
              fontSize: Get.height / 50,
              color: ColorRes.purpleDark,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  },
);
