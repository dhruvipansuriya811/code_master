import 'package:code_master/screen/splash_screen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
