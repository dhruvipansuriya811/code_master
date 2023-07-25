import 'package:code_master/screen/dashboard_screen/dashboard_screen.dart';
import 'package:code_master/screen/signup_sreen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool logInEyeValue = false;

  void changeLoginEyeValue() {
    logInEyeValue = !logInEyeValue;
    update(['changeLogInEyeValue']);
  }

  void loginToDesBoard() {
    Get.to(const DashBordScreen());
  }

  void loginToSignUp() {
    Get.to(SignUpScreen());
  }
}
