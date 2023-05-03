import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventsController extends GetxController {
  RxInt minPrice = 0.obs;
  RxInt maxPrice = 1000000.obs;
  Rx<RangeValues> currentPriceRange = const RangeValues(0, 100).obs;
}
