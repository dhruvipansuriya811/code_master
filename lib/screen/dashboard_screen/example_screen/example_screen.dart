import 'package:code_master/common/common_appbar.dart';
import 'package:code_master/screen/dashboard_screen/example_screen/example_screen_controller.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScreen extends StatelessWidget {
   ExampleScreen({super.key});

  ExampleScreenController exampleScreenController = Get.put(ExampleScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(titleText: StringRes.exampleScreen),
      body: Center(child: Text("dataExample Screen")),
    );
  }
}
