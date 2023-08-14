import 'package:code_master/screen/dashboard_screen/dashboard_screen.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen.dart';
import 'package:code_master/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
    ),
  );
}
