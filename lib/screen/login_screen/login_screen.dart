import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/common/dispose_keyboard.dart';
import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/screen/login_screen/login_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {

   LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(LoginScreenController());
    return SafeArea(
      child: GestureDetector(
        onTap: () {
         disposeKeyBoard();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body:
          // Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Color(0XFFf3e7e9),
          //         Color(0XFFe3eeff),
          //       ],
          //     ),
          //   ),
          //   child:
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    heightSizeBox(Get.height / 20),
                    loginLogo,
                    heightSizeBox(Get.height / 60),
                    loginText,
                    heightSizeBox(Get.height / 20),
                    loginEmailTextField,
                    heightSizeBox(Get.height / 30),
                    loginPasswordTextField,
                    heightSizeBox(Get.height / 8),
                    loginScreenLoginButton,
                    heightSizeBox(Get.height / 30),
                    forgotPasswordButton,
                    heightSizeBox(Get.height / 30),
                    goToSignUp,
                    heightSizeBox(Get.height / 30),
                  ],
                ),
              ),
            ),
        //  ),
        ),
      ),
    );
  }
}
