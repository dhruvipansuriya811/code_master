import 'package:code_master/common/common_text.dart';
import 'package:flutter/material.dart';

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
    //backgroundColor: Colors.blue,
    //iconTheme: IconThemeData(color: Colors.yellow),
    title: commonText(
      text: titleText,
      fontFamily: "Poppins",
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
