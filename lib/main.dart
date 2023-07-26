import 'package:code_master/screen/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/dashboard_screen/profile_screen/profile_screen.dart';

void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home:ProfileScreen(),
      )
  );
}



// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S LEARN",
//   style: TextStyle(fontFamily: "DMSerifDisplay-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "DMSerifDisplay-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "SOMETHING NEW",
//   style: TextStyle(fontFamily: "Butcherman-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S LEARN",
//   style: TextStyle(fontFamily: "RubikBeastly-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "Butcherman-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "Anton-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "FasterOne-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "Galada-Regular", fontSize: 20),
// ),
// SizedBox(
//   height: 5,
// ),
// Text(
//   "LET'S START",
//   style: TextStyle(fontFamily: "ondrinaOutline-Regular", fontSize: 20),
// ),