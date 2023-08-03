import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Color(0XFFf3e7e9),
          //         Color(0XFFe3eeff),
          //       ],
          //     ),
          //   ),
          //   child:
          Column(
        children: [
          Expanded(
            child: homeScreenAllTopicContainer,
          ),
        ],
      ),
      //   ),
    );
  }
}
