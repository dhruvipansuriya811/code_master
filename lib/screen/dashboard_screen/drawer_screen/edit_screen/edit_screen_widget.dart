import 'package:code_master/screen/dashboard_screen/drawer_screen/edit_screen/edit_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/common_button.dart';
import '../../../../../common/common_radiobutton.dart';
import '../../../../../common/common_textfield.dart';
import '../../../../../utils/colors_res.dart';

AppBar editScreenAppBar = AppBar(
  backgroundColor: ColorRes.purpleLight,
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
            radius: 100,
            backgroundImage: controller.file == null
                ? const AssetImage(
                    ImageRes.profileImage,
                  )
                : FileImage(controller.file!) as ImageProvider,
          ),
          Positioned(
            left: 160,
            bottom: 20,
            child: CircleAvatar(
              backgroundColor: ColorRes.purpleDark,
              // foregroundColor: Colors.red,
              radius: 20,
              child: InkWell(
                onTap: () {
                  controller.imagePick();
                },
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
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
      fontSize: 18,
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
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          StringRes.studyName,
          style: TextStyle(
            fontSize: 18,
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
          const Text(
            StringRes.school,
            style: TextStyle(
              fontSize: 18,
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
          const Text(
            StringRes.collage,
            style: TextStyle(
              fontSize: 18,
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
      const Text(
        StringRes.genderName,
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins-Light",
          fontWeight: FontWeight.bold,
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
          const Text(
            StringRes.male,
            style: TextStyle(
              fontSize: 18,
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
          const Text(
            StringRes.female,
            style: TextStyle(
              fontSize: 18,
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
          const Text(
            StringRes.other,
            style: TextStyle(
              fontSize: 18,
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
      onTap: () => controller.birthDateOnTap(),
      fontSize: 18,
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
          onTap: controller.cancelBtnOnTap,
          data: StringRes.cancel,
          height: Get.height / 18,
          width: Get.width / 3,
        ),
        const Spacer(),
        containerButton(
          onTap: controller.saveBtnOnTap,
          data: StringRes.save,
          height: Get.height / 18,
          width: Get.width / 3,
        ),
      ],
    );
  },
);
