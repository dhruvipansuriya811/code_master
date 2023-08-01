import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/common/dispose_keyboard.dart';
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
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0XFFf3e7e9), Color(0XFFe3eeff)],
              ),
            ),
            child: Padding(
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
                    heightSizeBox(Get.height / 30),
                    birthOfDate,
                    heightSizeBox(Get.height / 30),
                    signUpStudyColumn,
                    heightSizeBox(Get.height / 30),
                    signUpRadioButtonColumn,
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
      ),
    );
  }
}
