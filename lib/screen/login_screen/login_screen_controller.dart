import 'package:code_master/screen/desboard_screen/desboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool signEyeValue = false;
  void changeSignUpEyeValue() {
    signEyeValue = !signEyeValue;
    update(['changeSignUpEyeValue']);
  }

  void loginToDesBoard() {
    Get.to(DesBoardScreen());
  }
}
