import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();

 void  onFieldSubmitted (String value){
  debugPrint('onFieldSubmitted value $value');
  }

  String searchValue = '';
  //
  // void onTapSearch(value) {
  //   searchValue = value;
  //   update(["searchValue"]);
  // }
  //
  // void navigationToPop() {
  //   Get.back();
  // }

  List<String> searchBarList = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];
}
