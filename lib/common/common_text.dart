import 'package:flutter/material.dart';

Widget commonText({
  required String text,
  double? fontSize,
  String? fontFamily,
  Color? textColor,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return Text(
    text,
    style: TextStyle(
      letterSpacing:letterSpacing ,
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: fontWeight,
    ),
  );
}
