<<<<<<< Updated upstream
import 'package:code_master/screen/forgot_password/forgot_password_screen.dart';
=======
>>>>>>> Stashed changes
import 'package:code_master/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/dashboard_screen/dashboard_screen.dart';
import 'screen/dashboard_screen/example_screen/example_screen.dart';

void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home:SplashScreen(),
      )
  );
}