import '../hospitals_page/widgets/hospitals_item_widget.dart';
import 'controller/hospitals_controller.dart';
import 'models/hospitals_item_model.dart';
import 'models/hospitals_model.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';
import 'package:link_up/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HospitalsPage extends StatelessWidget {
  HospitalsController controller =
      Get.put(HospitalsController(HospitalsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 11, top: 22, right: 11, bottom: 22),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller: controller.searchController,
                                    hintText: "lbl_search_hospital".tr,
                                    margin: getMargin(right: 10),
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 8,
                                            top: 10,
                                            right: 4,
                                            bottom: 10),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(
                                            right: getHorizontalSize(15)),
                                        child: IconButton(
                                            onPressed: () {
                                              controller.searchController
                                                  .clear();
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600)))),
                                Padding(
                                    padding: getPadding(left: 16, top: 56),
                                    child: Text("msg_hospitals_around".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 21, right: 44),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(27));
                                        },
                                        itemCount: controller.hospitalsModelObj
                                            .value.hospitalsItemList.length,
                                        itemBuilder: (context, index) {
                                          HospitalsItemModel model = controller
                                              .hospitalsModelObj
                                              .value
                                              .hospitalsItemList[index];
                                          return HospitalsItemWidget(model,
                                              onTapTxtViewprofile:
                                                  onTapTxtViewprofile);
                                        })))
                              ]))
                    ]))));
  }

  onTapTxtViewprofile() {
    Get.toNamed(AppRoutes.hospitalProfileScreen);
  }
}
