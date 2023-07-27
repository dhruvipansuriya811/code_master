import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_appbar.dart';

Widget dashboardBottomNavigationBar = GetBuilder<DashboardScreenController>(
  // id: "DashboardBottomNavigationBar",
  builder: (controller) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: controller.notchBottomBarController,
      color: Colors.white,
      showLabel: false,
      notchColor: ColorRes.purpleDark,
      removeMargins: false,
      bottomBarWidth: Get.width,
      durationInMilliSeconds: 300,
      bottomBarItems: List.generate(
        controller.bottomNavigationItem.length,
        (index) => BottomBarItem(
          inActiveItem: Icon(
            controller.bottomNavigationItem[index]['icon'],
            color: ColorRes.purpleDark,
          ),
          activeItem: Icon(
            controller.bottomNavigationItem[index]['icon'],
            color: Colors.white,
          ),
          itemLabel: controller.bottomNavigationItem[index]['label'],
        ),
      ),
      onTap: controller.onTapBottomBar,
    );
  },
);

Widget dashBoardPageView = GetBuilder<DashboardScreenController>(
  //id: "DashboardPageView",
  builder: (controller) => PageView(
    controller: controller.pageController,
    physics: const NeverScrollableScrollPhysics(),
    children: List.generate(controller.dashBoardScreenList.length,
        (index) => controller.dashBoardScreenList[index]),
  ),
);

// AppBar dashBoardAppBar = commonAppbar(
//   titleText: Get.find<DashboardScreenController>().appBarTitleList[Get.find<DashboardScreenController>().selectedPage],
// );

AppBar dashBoardAppBar = AppBar(
  title: GetBuilder<DashboardScreenController>(
    id: 'appBarCommon',
    builder: (controller) =>
        Text(controller.appBarTitleList[controller.selectedPage]),
  ),
);
