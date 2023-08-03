import 'package:code_master/screen/dashboard_screen/drawer_screen/edit_screen/edit_screen_controller.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/common_sizebox.dart';
import 'edit_screen_widget.dart';

class EditScreen extends StatelessWidget {
  EditScreen({super.key});

  final EditScreenController editScreenController =
      Get.put(EditScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: editScreenAppBar,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFFf3e7e9), Color(0XFFe3eeff)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 20,
            ),
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    heightSizeBox(Get.height / 50),
                    imagePicker,
                    heightSizeBox(Get.height / 50),
                    Divider(
                      endIndent: Get.width / 13,
                      indent: Get.width / 13,
                      color: ColorRes.purpleLight,
                    ),
                    heightSizeBox(Get.height / 40),
                    editScreenNameTextField,
                    heightSizeBox(Get.height / 30),
                    editScreenBirthOfDate,
                    heightSizeBox(Get.height / 40),
                    editScreenStudyColumn,
                    heightSizeBox(Get.height / 40),
                    editScreenRadioButtonColumn,
                    heightSizeBox(Get.height / 20),
                    editScreenRow,
                    heightSizeBox(Get.height / 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
