import 'package:code_master/screen/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController studyController = TextEditingController();
  TextEditingController genderController = TextEditingController();




  bool signEyeValue = false;

  int signUpRadioGroupValue = 0;
  int signUpRadioMale = 1;
  int signUpRadioFemale = 2;
  int signRadioOther = 3;

  void signUpMaleOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpFemaleOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpOtherOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

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
