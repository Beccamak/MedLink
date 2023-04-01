import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 20,
                top: 86,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      291,
                    ),
                    margin: getMargin(
                      right: 43,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_if_the_hospital".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
