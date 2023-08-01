import 'package:code_master/screen/forgot_password/forgot_password_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_sizebox.dart';
import 'forgot_screen_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {

  ForgotPasswordScreen({super.key});

  ForgotPassController forgotPassController = Get.put(ForgotPassController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFFf3e7e9),
                Color(0XFFe3eeff),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width / 20, vertical: Get.height / 40),
            child: Column(
              children: [
                forgotPassRow,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        heightSizeBox(Get.height / 30),
                        forgotPassImage,
                        heightSizeBox(Get.height / 60),
                        forPassText,
                        heightSizeBox(Get.height / 20),
                        forgotPassEmail,
                        heightSizeBox(Get.height / 10),
                        forgotPassButton,
                        heightSizeBox(Get.height /5 ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
