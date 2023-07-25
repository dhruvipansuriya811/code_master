import 'package:code_master/common/common_text.dart';
import 'package:flutter/material.dart';

AppBar commonAppbar({
  required String titleText,
  void Function()? actionButtonOnPress,
  void Function()? leadingButtonOnPress,
  IconData? actionIconName,
  IconData? leadingIconName,
}) {
  return AppBar(
    title: commonText(
      text: titleText,
      fontFamily: 'Poppins',
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: leadingButtonOnPress,
      icon: Icon(leadingIconName),
    ),
    actions: [
      IconButton(
        onPressed: actionButtonOnPress,
        icon: Icon(actionIconName),
      ),
    ],
  );
}
