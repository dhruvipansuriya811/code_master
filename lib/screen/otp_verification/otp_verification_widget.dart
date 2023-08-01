import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_button.dart';
import '../../common/common_sizebox.dart';
import '../../utils/assets_res.dart';
import '../../utils/colors_res.dart';
import '../../utils/string_res.dart';
import 'otp_verification_controller.dart';

Widget otpVerificationPassRow = GetBuilder<OtpVerificationController>(
  builder: (controller) {
    return Row(
      children: [
        Container(
          height: Get.height / 17,
          width: Get.width / 8,
          decoration: BoxDecoration(
            color: ColorRes.purplePassContainerColour,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: controller.otpVerificationArrow,
            icon: const Icon(
              IconRes.backArrow,
              color: ColorRes.purpleDark,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Get.width / 10),
          child: Text(
            StringRes.verification,
            style: TextStyle(fontFamily: "Poppins", fontSize: Get.height / 40),
          ),
        ),
      ],
    );
  },
);

Widget otpVerificationImage = GetBuilder<OtpVerificationController>(
  builder: (controller) {
    return const CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage(ImageRes.otpVerification),
    );
  },
);

Widget verificationTextColumn = GetBuilder<OtpVerificationController>(
  builder: (controller) {
    return Column(
      children: [
        const Text(
          StringRes.otpVerification,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        heightSizeBox(10),
        const Text(
          StringRes.enterOtpNumber,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        heightSizeBox(10),
      ],
    );
  },
);

Widget otpTextfiled(BuildContext context) =>
    GetBuilder<OtpVerificationController>(
      id: "otpTextfiled",
      builder: (controller) {
        return Form(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  autofocus: true,
                  onSaved: (pin1) {},
                  onChanged: (value) {
                    controller.otpTextfiledOnChange(value, context);
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: const InputDecoration(counterText: ""),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  autofocus: true,
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    controller.otpTextfiledOnChange(value, context);
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: const InputDecoration(counterText: ""),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  autofocus: true,
                  onSaved: (pin3) {},
                  onChanged: (value) {
                    controller.otpTextfiledOnChange(value, context);
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: const InputDecoration(counterText: ""),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 64,
                width: 68,
                child: TextFormField(
                  autofocus: true,
                  onSaved: (pin4) {},
                  onChanged: (value) {
                    controller.otpTextfiledOnChange(value, context);
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: const InputDecoration(counterText: ""),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        );
      },
    );

Widget otpVerificationButton = GetBuilder<OtpVerificationController>(
  builder: (controller) {
    return containerButton(
      onTap: controller.verifyOnTap,
      data: StringRes.verify,
      height: Get.height / 18,
      width: Get.width / 1.5,
    );
  },
);

Widget resendOtpText = GetBuilder<OtpVerificationController>(
  builder: (controller) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringRes.didNotReceiveOtp,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Text(
          StringRes.resentOtp,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  },
);
