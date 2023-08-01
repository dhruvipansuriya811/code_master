import 'package:code_master/screen/login_screen/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SignUpScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController studyController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController birtDateController = TextEditingController();
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  bool signEyeValue = false;

  int signUpStudyRadioGroupValue = 0;
  int signUpRadioSchool = 1;
  int signUpRadioCollage = 2;

  int signUpGenderRadioGroupValue = 0;
  int signUpRadioMale = 1;
  int signUpRadioFemale = 2;
  int signRadioOther = 3;

  void signUpSchoolOnTap(int value) {
    signUpStudyRadioGroupValue = value;
    update(["signUpScreenStudyRadioButton"]);
  }

  void signUpCollageOnTap(int value) {
    signUpStudyRadioGroupValue = value;
    update(["signUpScreenStudyRadioButton"]);
  }

  void signUpMaleOnTap(int value) {
    signUpGenderRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpFemaleOnTap(int value) {
    signUpGenderRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpOtherOnTap(int value) {
    signUpGenderRadioGroupValue = value;
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
    Get.to(const LoginScreen());
  }

  void birthDateOnTap() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      currentDate: DateTime.now(),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      if (kDebugMode) {
        print(pickedDate);
      }
      String formattedDate = DateFormat('dd-MM-yyy').format(pickedDate);
      if (kDebugMode) {
        print(formattedDate);
      }

      birtDateController.text = formattedDate;
      update(["datePicker"]);
    } else {
      if (kDebugMode) {
        print("Date is not selected");
      }
    }
  }
}
