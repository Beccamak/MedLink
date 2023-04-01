import '../controller/hospitals_controller.dart';
import '../models/hospitals_item_model.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';

// ignore: must_be_immutable
class HospitalsItemWidget extends StatelessWidget {
  HospitalsItemWidget(this.hospitalsItemModelObj, {this.onTapTxtViewprofile});

  HospitalsItemModel hospitalsItemModelObj;

  var controller = Get.find<HospitalsController>();

  VoidCallback? onTapTxtViewprofile;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame758531078,
          height: getVerticalSize(
            62,
          ),
          width: getHorizontalSize(
            103,
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_general_hospital".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratRegular14,
              ),
              Text(
                "lbl_washington_usa".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratRegular14Black900b2,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapTxtViewprofile?.call();
                      },
                      child: Text(
                        "lbl_view_profile".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular14Black900b2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "lbl_see_on_map".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular14Black90099,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
