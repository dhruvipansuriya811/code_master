import 'package:code_master/screen/dashboard_screen/search_screen/search_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearchScreenController());
    return const Scaffold();
  }
}
