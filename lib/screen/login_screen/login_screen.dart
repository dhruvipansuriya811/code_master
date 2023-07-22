import 'package:code_master/screen/login_screen/login_screen_controller.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginScreenController loginScreenController =
      Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Center(child: Text("dhruvi")),
          ],
        )
      ),
    );
  }
}
