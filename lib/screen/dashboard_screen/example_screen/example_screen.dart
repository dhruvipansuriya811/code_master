import 'package:code_master/screen/dashboard_screen/example_screen/example_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/example_screen/example_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScreen extends StatelessWidget {
  ExampleScreen({super.key});

  final ExampleScreenController exampleScreenController =
      Get.put(ExampleScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allExampleList,
    );
  }
}
