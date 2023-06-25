import 'package:get/get.dart';

import '../../controller/notification_controller.dart';



class NotificationsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}