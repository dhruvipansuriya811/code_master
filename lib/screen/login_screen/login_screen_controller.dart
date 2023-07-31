import 'package:code_master/screen/dashboard_screen/dashboard_screen.dart';
import 'package:code_master/screen/signup_screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../forgot_password/forgot_password_screen.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool logInEyeValue = false;

  void changeLoginEyeValue() {
    logInEyeValue = !logInEyeValue;
    update(['changeLogInEyeValue']);
  }

  void loginToDesBoard() {
    Get.to(DashBordScreen());
  }

  void loginToSignUp() {
    Get.to(SignUpScreen());
  }

  void loginToForgotPassScreen(){
    Get.to(ForgotPasswordScreen());
  }

}
