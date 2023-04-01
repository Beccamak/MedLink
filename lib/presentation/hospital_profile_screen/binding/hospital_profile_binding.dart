import '../controller/hospital_profile_controller.dart';
import 'package:get/get.dart';

class HospitalProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HospitalProfileController());
  }
}
