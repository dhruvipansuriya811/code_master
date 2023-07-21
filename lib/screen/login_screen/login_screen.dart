import 'package:code_master/screen/login_screen/login_screen_controller.dart';
import 'package:code_master/screen/login_screen/login_screen_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginScreenController loginScreenController =
      Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
         // alignment: Alignment.center,
          children: [
            loginBackGroundContainer(),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: loginScreenLottieContainer(),
            ),
            Positioned(
              top: Get.height/3.5,
              left: Get.width/80,
              right: Get.width/80,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: loginScreenTextFiledContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
