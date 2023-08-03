import 'package:code_master/screen/splash_screen/splash_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //Bo
                ],
                //    color: Colors.pink,
                borderRadius: BorderRadius.circular(300),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image(
                  image: AssetImage(ImageRes.splashLogo2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
