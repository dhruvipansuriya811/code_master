import 'package:code_master/screen/dashboard_screen/drawer_screen/edit_screen/edit_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/common_button.dart';
import '../../../../../common/common_radiobutton.dart';
import '../../../../../common/common_textfield.dart';
import '../../../../../utils/colors_res.dart';

AppBar editScreenAppBar = AppBar(toolbarHeight: 60,
  backgroundColor: ColorRes.purpleLight2,
  centerTitle: true,
  title: const Text(
    StringRes.editProfile,
    style: TextStyle(fontFamily: "Poppins"),
  ),
  leading: GetBuilder<EditScreenController>(
    builder: (controller) => IconButton(
      onPressed: controller.appbarOnPress,
      icon: const Icon(IconRes.backArrow),
    ),
  ),
);

Widget imagePicker = GetBuilder<EditScreenController>(
  id: "imagePicker",
  builder: (controller) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: Get.width/4,
            backgroundImage: controller.file == null
                ? const AssetImage(
                    ImageRes.profileImage,
                  )
                : FileImage(controller.file!) as ImageProvider,
          ),
          Positioned(
            left: Get.width/2.6,
            bottom: Get.height/35,
            child: CircleAvatar(
              backgroundColor: ColorRes.purpleDark,
              // foregroundColor: Colors.red,
              radius: Get.width/20,
              child: InkWell(
                onTap: () {
                  controller.imagePick();
                },
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: Get.width/20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
);

Widget editScreenNameTextField = GetBuilder<EditScreenController>(
  builder: (controller) {
    return commonTextFiled(
      prefixIcon: IconRes.person,
      textFiledName: StringRes.name,
      fontSize: Get.width/20,
      hintText: StringRes.name,
      fontFamily: "Poppins",
      controller: controller.nameController,
    );
  },
);

Widget editScreenStudyColumn = GetBuilder<EditScreenController>(
  id: "signUpScreenStudyRadioButton",
  builder: (controller) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          StringRes.studyName,
          style: TextStyle(
            fontSize: Get.width/20,
            fontFamily: "Poppins-Light",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          commonRadioButton(
            value: controller.signUpRadioSchool,
            groupValue: controller.signUpStudyRadioGroupValue,
            onChanged: (value) {
              controller.signUpSchoolOnTap(value);
            },
          ),
           Text(
            StringRes.school,
            style: TextStyle(
              fontSize: Get.width/20,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signUpRadioCollage,
            groupValue: controller.signUpStudyRadioGroupValue,
            onChanged: (value) {
              controller.signUpCollageOnTap(value);
            },
          ),
           Text(
            StringRes.collage,
            style: TextStyle(
              fontSize: Get.width/20,
              fontFamily: "Poppins-Light",
            ),
          ),
        ],
      )
    ],
  ),
);

Widget editScreenRadioButtonColumn = GetBuilder<EditScreenController>(
  id: "signUpScreenRadioButton",
  builder: (controller) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          StringRes.genderName,
          style: TextStyle(
            fontSize: Get.width/20,
            fontFamily: "Poppins-Light",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Row(
        children: [
          commonRadioButton(
            value: controller.signUpRadioMale,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpMaleOnTap(value);
            },
          ),
          Text(
            StringRes.male,
            style: TextStyle(
              fontSize: Get.width/20,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signUpRadioFemale,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpFemaleOnTap(value);
            },
          ),
          Text(
            StringRes.female,
            style: TextStyle(
              fontSize: Get.width/20,
              fontFamily: "Poppins-Light",
            ),
          ),
          commonRadioButton(
            value: controller.signRadioOther,
            groupValue: controller.signUpRadioGroupValue,
            onChanged: (value) {
              controller.signUpOtherOnTap(value);
            },
          ),
          Text(
            StringRes.other,
            style: TextStyle(
              fontSize: Get.width/20,
              fontFamily: "Poppins-Light",
            ),
          ),
        ],
      )
    ],
  ),
);

Widget editScreenBirthOfDate = GetBuilder<EditScreenController>(
  id: "datePicker",
  builder: (controller) {
    return commonTextFiled(
<<<<<<< Updated upstream
      bodSelect: () => controller.birthDateOnTap(),
      fontSize: 18,
=======
      onTap: () => controller.birthDateOnTap(),
      fontSize: Get.width/20,
>>>>>>> Stashed changes
      fontFamily: "Poppins",
      prefixIcon: IconRes.birthDate,
      hintText: StringRes.enterDate,
      textFiledName: StringRes.enterDate,
      controller: controller.birtDateController,
    );
  },
);

Widget editScreenRow = GetBuilder<EditScreenController>(
  builder: (controller) {
    return Row(
      children: [
        containerButton(
          color1: Color(0XFFFF4F4B),
          color2: Color(0XFFFF817E),
          onTap: controller.cancelBtnOnTap,
          data: StringRes.cancel,
          height: Get.height / 18,
          width: Get.width / 3,
        ),
        Spacer(),
        containerButton(
          color2: Color(0XFF00AB08),
          color1: Color(0XFF95F985),
          onTap: controller.saveBtnOnTap,
          data: StringRes.save,
          height: Get.height / 18,
          width: Get.width / 3,
        ),
      ],
    );
  },
);
