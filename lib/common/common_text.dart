import 'package:flutter/material.dart';

Widget commonText({
  required String text,
  double? fontSize,
  String? fontFamily,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: fontWeight,
    ),
  );
}
