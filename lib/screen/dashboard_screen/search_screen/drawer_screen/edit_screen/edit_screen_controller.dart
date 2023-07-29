import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController studyController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController birtDateController = TextEditingController();

  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  bool signEyeValue = false;

  int signUpStudyRadioGroupValue = 0;
  int signUpRadioSchool = 1;
  int signUpRadioCollage = 2;

  int signUpRadioGroupValue = 0;
  int signUpRadioMale = 1;
  int signUpRadioFemale = 2;
  int signRadioOther = 3;

  void signUpSchoolOnTap(int value) {
    signUpStudyRadioGroupValue = value;
    update(["signUpScreenStudyRadioButton"]);
  }

  void signUpCollageOnTap(int value) {
    signUpStudyRadioGroupValue = value;
    update(["signUpScreenStudyRadioButton"]);
  }

  void signUpMaleOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpFemaleOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void signUpOtherOnTap(int value) {
    signUpRadioGroupValue = value;
    update(["signUpScreenRadioButton"]);
  }

  void birthDateOnTap() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime(2000),
    );
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('dd-MM-yyy').format(pickedDate);
      print(formattedDate);

      birtDateController.text = formattedDate;
      update(["datePicker"]); //set foratted date to TextField value.
    } else {
      print("Date is not selected");
    }
  }

  void appbarOnPress() {
    Get.back();
  }

  File? file;

  Future<void> imagePick() async {
    ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    update(["imagePicker"]);
  }

  void saveBtnOnTap() {}

  void cancelBtnOnTap() {}
}
