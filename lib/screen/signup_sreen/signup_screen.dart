import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/common/disposeKeyBoard';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_screen_controller.dart';
import 'signup_screen_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignUpScreenController signUpScreenController =
      Get.put(SignUpScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          disposeKeyBoard();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  heightSizeBox(Get.height / 20),
                  signUpLogo,
                  heightSizeBox(Get.height / 60),
                  signUpText,
                  heightSizeBox(Get.height / 20),
                  signUpNameTextField,
                  heightSizeBox(Get.height / 30),
                  signUpEmailController,
                  heightSizeBox(Get.height / 30),
                  signUpPasswordTextField,
                  heightSizeBox(Get.height / 30),
                  signUpPhoneController,
                  heightSizeBox(Get.height / 20),
                  signUpButton,
                  heightSizeBox(Get.height / 30),
                  goToSignIn,
                  heightSizeBox(Get.height / 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
