import 'package:get/get.dart';

import '../../controller/my_booking_controller.dart';


class MyBookingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyBookingController>(() => MyBookingController());
  }
}