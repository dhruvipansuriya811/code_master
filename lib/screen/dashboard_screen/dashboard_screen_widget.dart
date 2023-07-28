import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

Widget dashboardBottomNavigationBar = GetBuilder<DashboardScreenController>(
  builder: (controller) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: controller.notchBottomBarController,
      color: ColorRes.weightColor,
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
  id: "dashboardPageView",
  builder: (controller) => PageView(
    controller: controller.pageController,
    physics: const NeverScrollableScrollPhysics(),
    children: List.generate(
      controller.dashBoardScreenList.length,
      (index) => controller.dashBoardScreenList[index],
    ),
  ),
);

AppBar dashBoardAppBar = AppBar(
  //backgroundColor: ColorRes.purpleLight2,
  title: GetBuilder<DashboardScreenController>(
    id: 'dashBoardAppBarTitle',
    builder: (controller) => Text(
      controller.appBarTitleList[controller.selectedPage],
      style: const TextStyle(fontFamily: "Poppins"),
    ),
  ),
  centerTitle: true,
  leading: GetBuilder<DashboardScreenController>(
    builder: (controller) => IconButton(
      onPressed: () => controller.drawerOnTap(),
      icon: ValueListenableBuilder<AdvancedDrawerValue>(
        valueListenable: controller.advancedDrawerController,
        builder: (_, value, __) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Icon(
              value.visible ? Icons.clear : Icons.menu,
              key: ValueKey<bool>(value.visible),
            ),
          );
        },
      ),
    ),
  ),
);

Widget drawer = GetBuilder<DashboardScreenController>(
  builder: (controller) => Drawer(
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(ImageRes.loginLogo),
          radius: 80,
        ),
      ],
    ),
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
  ),
);
