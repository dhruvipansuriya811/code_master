import 'package:code_master/screen/dashboard_screen/example_screen/example_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget allExampleList = GetBuilder<ExampleScreenController>(
  id: 'ExampleScreen Animated Container',
  builder: (controller) {
    return ListView.builder(
      itemCount: controller.exampleScreenData.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(seconds: 3),
            height: controller.animatedContainerHeight,
            child: ListTile(
              focusColor: ColorRes.purpleLight2,
              style: ListTileStyle.list,
              leading: CircleAvatar(
                child: Text(
                  (index + 1).toString(),
                ),
              ),
              title: Text(
                controller.exampleScreenData[index]['topic'],
              ),
              trailing: IconButton(
                icon: Icon(
                  controller.exampleScreenData[index]['data']
                      ? IconRes.downArrow
                      : IconRes.forwardArrow,
                ),
                onPressed: () {
                  controller.onTapAnimatedContainer(index);
                },
              ),
            ),
          ),
        );
      },
    );
  },
);
