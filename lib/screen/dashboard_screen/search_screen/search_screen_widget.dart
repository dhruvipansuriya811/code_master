import 'package:code_master/screen/dashboard_screen/search_screen/search_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Widget searchBar = GetBuilder<SearchScreenController>(
  builder: (controller) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Get.width/40,vertical: Get.height/50),
      child: CupertinoSearchTextField(
        controller: controller.searchController,
        placeholder: 'Search',
      ),
    );
  },
);
