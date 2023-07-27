import 'package:code_master/common/common_appbar.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen_widget.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

 final HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
          leadingButtonOnPress: () {
            homeScreenController.drawerOnTap();
          },
          //actionButtonOnPress: ,
          leadingIconName: IconRes.menu,
          titleText: StringRes.homeScreen,
          actionIconName: IconRes.moreVert,
          color: ColorRes.blackColor,
          size: 25),
      body: homeScreenAllTopicContainer,
    );
  }
}
