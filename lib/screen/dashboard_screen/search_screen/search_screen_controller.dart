import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();

 void  onFieldSubmitted (String value){
  debugPrint('onFieldSubmitted value $value');
  }

  String searchValue = '';

  List<String> searchBarList = [
    'Afghanistan',
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
