import 'package:code_master/common/common%20textfiled.dart';
import 'package:code_master/common/common_text.dart';
import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
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
