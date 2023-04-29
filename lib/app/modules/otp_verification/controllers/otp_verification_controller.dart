import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  final otpFormKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();

  RxBool isInvalidPin = false.obs;
}
