import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/doctors_screen/models/doctors_model.dart';

class DoctorsController extends GetxController {
  Rx<DoctorsModel> doctorsModelObj = DoctorsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
