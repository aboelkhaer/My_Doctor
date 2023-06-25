import 'package:get/get.dart';
import '../../controller/scaduales_controller.dart';


class DoctorSchedulesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorSchedulesController>(() => DoctorSchedulesController());
  }
}