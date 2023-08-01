import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:code_master/common/common_sizebox.dart';
import 'package:code_master/screen/dashboard_screen/dashboard_screen_controller.dart';
import 'package:code_master/utils/assets_res.dart';
import 'package:code_master/utils/colors_res.dart';
import 'package:code_master/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

Widget dashboardBottomNavigationBar = GetBuilder<DashboardScreenController>(
  builder: (controller) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: controller.notchBottomBarController,
      color: ColorRes.weightColor,
      showLabel: true,
      notchColor: ColorRes.purpleDark,
      bottomBarWidth: Get.width,
      durationInMilliSeconds: 300,
      bottomBarItems: List.generate(
        controller.bottomNavigationItem.length,
        (index) => BottomBarItem(
          inActiveItem: Icon(
            controller.bottomNavigationItem[index]['icon'],
            color: ColorRes.purpleDark,
          ),
          activeItem: Icon(
            controller.bottomNavigationItem[index]['icon'],
            color: Colors.white,
          ),
          itemLabel: controller.bottomNavigationItem[index]['label'],
        ),
      ),
      onTap: controller.onTapBottomBar,
    );
  },
);

Widget dashBoardPageView = GetBuilder<DashboardScreenController>(
  id: "dashboardPageView",
  builder: (controller) => PageView(
    controller: controller.pageController,
    physics:   NeverScrollableScrollPhysics(),
    children: List.generate(
      controller.dashBoardScreenList.length,
      (index) => controller.dashBoardScreenList[index],
    ),
  ),
);

AppBar dashBoardAppBar = AppBar(
  excludeHeaderSemantics: false,
  automaticallyImplyLeading: false,
  backgroundColor: ColorRes.purpleLight2,
  title: GetBuilder<DashboardScreenController>(
    id: 'dashBoardAppBarTitle',
    builder: (controller) => Text(
      controller.appBarTitleList[controller.selectedPage],
      style:   TextStyle(fontFamily: "Poppins"),
    ),
  ),
  centerTitle: true,
  leading: GetBuilder<DashboardScreenController>(
    id: 'dashBoardAppBarIcon',
    builder: (controller) => controller.selectedPage==0?IconButton(
      onPressed: () =>controller.drawerOnTap(),
      icon: ValueListenableBuilder<AdvancedDrawerValue>(
        valueListenable: controller.advancedDrawerController,
        builder: (_, value, __) {
          return AnimatedSwitcher(
            duration:   Duration(milliseconds: 500),
            child: Icon(
              value.visible? Icons.clear : controller.selectedPage==1||controller.selectedPage==2||controller.selectedPage==3? null : Icons.menu,
              key: ValueKey<bool>(value.visible),
            ),
          );
        },
      ),
    ):  SizedBox(),
  ),
);

Widget drawer = GetBuilder<DashboardScreenController>(
  builder: (controller) => Drawer(
    child: Column(
      children: [
        heightSizeBox(20),
          CircleAvatar(
          backgroundImage: AssetImage(ImageRes.loginLogo),
          radius: 80,
        ),
        heightSizeBox(10),
        Divider(
          endIndent: Get.width / 17,
          indent: Get.width / 17,
          color: ColorRes.purpleLight,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: controller.drawerListItem.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => controller.drawerListTile(index, context),
                leading: Icon(
                  controller.drawerListItem[index]['icon'],
                ),
                title: Text(
                  controller.drawerListItem[index]['title'],
                  style:   TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              );
            },
          ),
        )
      ],
    ),
  ),
);

logOutDialog(
  BuildContext context,
) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding:   EdgeInsets.symmetric(horizontal: 20),
        shape:   RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius:   BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          child: FittedBox(
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Container(
                    color: ColorRes.purpleLight2,
                    child:   Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Log Out",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                    SizedBox(height: 50),
                    Text(
                    "Are You sure Want to log out?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                    SizedBox(height: 50),
                  Padding(
                    padding:   EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                              height: 50,
                              color: ColorRes.purpleLight2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:   Text(
                                StringRes.logOut,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Get.back();
                              }),
                        ),
                          SizedBox(width: 10),
                        Expanded(
                          child: MaterialButton(
                              height: 50,
                              color: ColorRes.purpleLight2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:   Text(
                                StringRes.cancel,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold
                                    // fontFamily: "Poppins",
                                    ),
                              ),
                              onPressed: () {
                                Get.back();
                              }),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

ratingBarDialog(
  BuildContext context,
) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return Dialog(
        insetPadding:   EdgeInsets.symmetric(horizontal: 20),
        shape:   RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ), //this right herea
        child: ClipRRect(
          borderRadius:   BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          child: FittedBox(
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Container(
                    color: ColorRes.purpleLight2,
                    child:   Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rating Dialog",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                    SizedBox(height: 50),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding:   EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) =>   Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(height: 50),
                  const SizedBox(width: 10),
                  MaterialButton(
                    height: 50,
                    color: ColorRes.purpleLight2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                          // fontFamily: "Poppins",
                          ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

