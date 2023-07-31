import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_sizebox.dart';

import 'otp_verification_controller.dart';
import 'otp_verification_widget.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({super.key});

  OtpVerificationController otpVerificationController =
      Get.put(OtpVerificationController());

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  otpVerificationPassRow,
                  heightSizeBox(Get.height / 30),
                  otpVerificationImage,
                  heightSizeBox(Get.height / 60),
                  verificationTextColumn,
                  heightSizeBox(Get.height / 60),
                  otpTextfiled(context),
                  heightSizeBox(Get.height / 10),
                  resendOtpText,
                  heightSizeBox(Get.height / 60),
                  otpVerificationButton,
                  heightSizeBox(Get.height / 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
