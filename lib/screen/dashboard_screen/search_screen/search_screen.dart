import 'package:code_master/screen/dashboard_screen/search_screen/search_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchScreenController screenController =
      Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            SearchBarAnimation(
              buttonWidget: Icon(Icons.search_outlined),
              trailingWidget: Icon(Icons.search),
              secondaryButtonWidget: Icon(Icons.cancel),
              textEditingController: screenController.searchController,
              isOriginalAnimation: false,
              enableKeyboardFocus: true,
              buttonBorderColour: Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}
