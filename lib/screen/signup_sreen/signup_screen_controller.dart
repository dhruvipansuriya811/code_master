import 'package:code_master/screen/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool signEyeValue = false;

  void changeSignUpEyeValue() {
    signEyeValue = !signEyeValue;
    update(['changeSignUpEyeValue']);
  }

  void loginToBackScreen() {
    Get.back();
  }

  void signUpToSignIn() {
    Get.to(LoginScreen());
  }
}
