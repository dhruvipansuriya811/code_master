import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

class DashBordScreen extends StatelessWidget {
  DashBordScreen({super.key});

  final DashboardScreenController dashboardScreenController =
      Get.put(DashboardScreenController());

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.yellow,
              Colors.blueGrey.withOpacity(0.2),
            ],
          ),
        ),
      ),
      controller: dashboardScreenController.advancedDrawerController,
      animationCurve: Curves.linear,
      animationDuration: const Duration(milliseconds: 500),
      animateChildDecoration: true,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: drawer,
      child: Scaffold(
        // key: dashboardScreenController.scaffoldKey,
        appBar: dashBoardAppBar,
        resizeToAvoidBottomInset: false,
        body: dashBoardPageView,
        extendBody: true,
        bottomNavigationBar: dashboardBottomNavigationBar,
      ),
    );
  }
}
