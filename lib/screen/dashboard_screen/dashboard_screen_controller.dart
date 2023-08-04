import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:code_master/screen/dashboard_screen/drawer_screen/edit_screen/edit_screen.dart';
import 'package:code_master/screen/dashboard_screen/example_screen/example_screen.dart';
import 'package:code_master/screen/dashboard_screen/home_screen/home_screen.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'dashboard_screen_widget.dart';
import 'profile_screen/profile_screen.dart';
import 'search_screen/search_screen.dart';

class DashboardScreenController extends GetxController {
  int selectedPage = 0;
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 0);
  PageController pageController = PageController(initialPage: 0);

  // final scaffoldKey = GlobalKey<ScaffoldState>();
  AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();

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
    const SearchScreen(),
    ExampleScreen(),
    const ProfileScreen(),
  ];

  void onTapBottomBar(index) {
    selectedPage = index;
    update(
        ['dashBoardAppBarTitle', 'dashboardPageView', 'dashBoardAppBarIcon']);
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void drawerOnTap() {
    advancedDrawerController.showDrawer();
  }

  List<Map> drawerListItem = [
    {'icon': IconRes.edit, 'title': StringRes.edit},
    {
      'icon': IconRes.share,
      'title': StringRes.share,
    },
    {
      'icon': IconRes.rating,
      'title': StringRes.rating,
    },
    {
      'icon': IconRes.logOut,
      'title': StringRes.logOut,
    },
  ];

  List drawerScreenData = [];

  void drawerListTile(int index, BuildContext context) {
    index == 0
        ? Get.to(EditScreen())
        : index == 1
            ? Get.defaultDialog()
            : index == 2
                ? ratingBarDialog(context)
                : logOutDialog(context);
  }
}
