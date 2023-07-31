import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {

  String valueString = "";
  void otpVerificationArrow() {
    Get.back();
  }

  void verifyOnTap(){

  }

  void otpTextfiledOnChange(value, BuildContext context) {

    valueString = value;
    if (valueString.length == 1) {
      FocusScope.of(context).nextFocus();

    }
    update(["otpTextfiled"]);
  }
}