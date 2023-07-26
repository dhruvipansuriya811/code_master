import 'package:code_master/common/common_appbar.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_widget.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DashboardScreenController());
    return SafeArea(
      child: Scaffold(
     //   appBar: commonAppbar(titleText: StringRes.homeScreen),
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFFf3e7e9), Color(0XFFe3eeff)],
            ),
          ),
          child: dashBoardPageView,
        ),
        extendBody: true,
        bottomNavigationBar: dashboardBottomNavigationBar,
      ),
    );
  }
}
