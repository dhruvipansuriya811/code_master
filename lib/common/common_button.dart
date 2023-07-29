//.......................onBoarding button........................//

import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';

Widget containerButton(
    {required void Function()? onTap,
    required String data,
    double? height,
    double? width,
    Color color1 = ColorRes.purpleDark,
    Color color2 = ColorRes.purpleLight}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
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
            color1,
            color2,
          ],
        ),
        //color: Colors.deepPurple.shade300,
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
