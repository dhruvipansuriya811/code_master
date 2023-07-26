import 'package:flutter/material.dart';

Widget commonRadioButton({
  required dynamic value,
  required dynamic groupValue,
  required void Function(dynamic)? onChanged,
}) {
  return Radio(
    value: value,
    groupValue: groupValue,
    onChanged: onChanged,
  );
}
