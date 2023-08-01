import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< Updated upstream
import 'screen/dashboard_screen/dashboard_screen.dart';
import 'screen/dashboard_screen/example_screen/example_screen.dart';
import 'screen/signup_screen/signup_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SignUpScreen(),
    ),
  );
=======

import 'screen/login_screen/login_screen.dart';
import 'screen/otp_verification/otp_verification_screen.dart';
import 'screen/signup_screen/signup_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    home: SignUpScreen(),
  ));
>>>>>>> Stashed changes
}
