import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/hospital_profile_screen/models/hospital_profile_model.dart';
import 'package:link_up/widgets/custom_bottom_bar.dart';

class HospitalProfileController extends GetxController {
  Rx<HospitalProfileModel> hospitalProfileModelObj = HospitalProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
