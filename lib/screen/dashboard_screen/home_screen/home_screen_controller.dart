import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeScreenController extends GetxController {
  final GlobalKey<ScaffoldState> scaffodKey = GlobalKey<ScaffoldState>();
  List cLanguageAllTopicList = [
    "What is c Language",
    "History of C",
    "C First Program",
    "C Variable and Constants",
    "C Data Types",
    "C Printf Scanf",
    "C Keyword",
    "C Comment",
    "C Format Specifier",
    "C Operators",
    "C if statement",
    "C switch-case",
    "C Conditional Operator",
    "C Loops",
    "C Nested if",
    "C Infinite Loop",
    "C Break and Continue keyword",
    "C goto statement",
    "C Patterns",
    "C Array Test",
    "C String",
    "C String Function",
    "C Math Function",
    "C Function",
    "C Recursion",
    "C Structure",
  ];

  void drawerOnTap() {
    scaffodKey.currentState?.openDrawer();
  }
}
