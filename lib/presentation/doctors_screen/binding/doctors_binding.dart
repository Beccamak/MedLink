import '../controller/doctors_controller.dart';
import 'package:get/get.dart';

class DoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorsController());
  }
}
