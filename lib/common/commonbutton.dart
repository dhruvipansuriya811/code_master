//.......................onBoarding button........................//

import 'package:code_master/screen/onboarding_screen/onboarding_controller.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

Widget containerButton({
  required void Function()? onTap,
  required String data,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 45,
      width: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 5.0,
          )
        ],
        gradient: LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          stops: [0.0, 1.0],
          colors: [
            Color(0XFF8B4EFF),
            Color(0XFFBF9EFF),
          ],
        ),
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(data,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "DMSerifDisplay-Regular",
              fontSize: 20,
            )),
      ),
    ),
  );
}
