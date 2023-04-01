import 'controller/doctors_controller.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';

class DoctorsScreen extends GetWidget<DoctorsController> {
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
                left: 2,
                top: 178,
                right: 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      330,
                    ),
                    margin: getMargin(
                      left: 41,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_if_doctors_will".tr,
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
