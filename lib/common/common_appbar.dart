import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar commonAppbar({
  required String titleText,
  void Function()? actionButtonOnPress,
  void Function()? leadingButtonOnPress,
  IconData? actionIconName,
  IconData? leadingIconName,
  Color? color,
  double? size,
}) {
  return AppBar(
    title: GetBuilder<DashboardScreenController>(
      id: 'appBarCommon',
      builder: (controller) => Text(titleText),
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: leadingButtonOnPress,
      icon: Icon(leadingIconName),
    ),
    actions: [
      IconButton(
        onPressed: actionButtonOnPress,
        icon: Icon(
          actionIconName,
          color: color,
          size: size,
        ),
      ),
    ],
  );
}
