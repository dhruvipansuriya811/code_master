import 'package:code_master/screen/desboard_screen/desboard_screen.dart';
import 'package:code_master/screen/signup_sreen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool logInEyeValue = false;
  void changeSignUpEyeValue() {
    logInEyeValue = !logInEyeValue;
    update(['changeLogInEyeValue']);
  }

  void loginToDesBoard() {
    Get.to(DesBoardScreen());
  }

  void loginToSignUp() {
    Get.to(SignUpScreen());
  }
}
