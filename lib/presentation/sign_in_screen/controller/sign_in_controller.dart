import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailplaceholderController = TextEditingController();

  TextEditingController passwordplaceholderController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailplaceholderController.dispose();
    passwordplaceholderController.dispose();
  }
}
