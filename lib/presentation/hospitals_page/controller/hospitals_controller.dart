import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/hospitals_page/models/hospitals_model.dart';
import 'package:flutter/material.dart';

class HospitalsController extends GetxController {
  HospitalsController(this.hospitalsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HospitalsModel> hospitalsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
