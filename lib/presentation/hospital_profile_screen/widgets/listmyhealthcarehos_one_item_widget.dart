import '../controller/hospital_profile_controller.dart';
import '../models/listmyhealthcarehos_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';

// ignore: must_be_immutable
class ListmyhealthcarehosOneItemWidget extends StatelessWidget {
  ListmyhealthcarehosOneItemWidget(this.listmyhealthcarehosOneItemModelObj);

  ListmyhealthcarehosOneItemModel listmyhealthcarehosOneItemModelObj;

  var controller = Get.find<HospitalProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listmyhealthcarehosOneItemModelObj
                      .myhealthcarehosOneTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Obx(
                  () => Text(
                    listmyhealthcarehosOneItemModelObj
                        .waterfallsstreeOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    listmyhealthcarehosOneItemModelObj
                        .yaoundecameroonOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 28,
              top: 28,
              bottom: 28,
            ),
            child: Obx(
              () => Text(
                listmyhealthcarehosOneItemModelObj.viewonmapTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12Black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
