import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:code_master/screen/dashboard_screen/example_screen/example_screen.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_screen/profile_screen.dart';
import 'search_screen/search_screen.dart';

class DashboardScreenController extends GetxController {
  int selectedPage = 0;
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 0);
  PageController pageController = PageController(initialPage: 0);

  List<Map> bottomNavigationItem = [
    {
      'icon': IconRes.home,
      'label': StringRes.home,
    },
    {
      'icon': IconRes.search,
      'label': StringRes.search,
    },
    {
      'icon': IconRes.example,
      'label': StringRes.example,
    },
    {
      'icon': IconRes.profile,
      'label': StringRes.profile,
    }
  ];

  List appBarTitleList = [
    StringRes.homeScreen,
    StringRes.searchScreen,
    StringRes.exampleScreen,
    StringRes.profileScreen,
  ];

  List dashBoardScreenList = [
     HomeScreen(),
    SearchScreen(),
    ExampleScreen(),
    ProfileScreen(),
  ];

  void onTap(int index) {
    selectedPage = index;
    update([
      "DashboardScreen",
    ]);
  }

  onTapBottomBar(index) {
    /// perform action on tab change and to update pages you can update pages without pages
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
