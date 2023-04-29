import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: controller.otpFormKey,
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            const Text(
              "Verification",
              style: TextStyle(
                color: Color(0xff110c26),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "We send you the verification on +639778230820",
              style: TextStyle(
                color: Color(0xff110c26),
                // fontSize: 24,
                // fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Obx(
              () => Pinput(
                controller: controller.pinController,
                length: 5,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                forceErrorState: controller.isInvalidPin.isTrue,
                errorText: "You entered an invalid OTP. Please try again.",
                onChanged: (value) => controller.isInvalidPin(false),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Continue"),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Resend code in "),
                Text(
                  "0:20",
                  style: TextStyle(color: Get.theme.primaryColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
