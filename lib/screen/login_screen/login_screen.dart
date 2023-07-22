import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/screen/login_screen/login_screen_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController loginScreenController =
      Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            children: [
              heightSizeBox(Get.height / 15),
              loginLogo,
              heightSizeBox(Get.height / 70),
              loginText,
              heightSizeBox(Get.height / 20),
              loginEmailTextField,
            ],
          ),
        ),
      ),
    );
  }
}
