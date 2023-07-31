import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../otp_verification/otp_verification_screen.dart';

class ForgotPassController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void forgotPassArrow() {
    Get.back();
  }

  void gotoOtpVerificationScreen(){
    Get.to(OtpVerification());
  }
}
