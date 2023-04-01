import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController nameplaceholderController = TextEditingController();

  TextEditingController emailplaceholderController = TextEditingController();

  TextEditingController passwordplaceholderController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.signInScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    nameplaceholderController.dispose();
    emailplaceholderController.dispose();
    passwordplaceholderController.dispose();
  }
}
