import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';
import 'package:link_up/widgets/custom_button.dart';
import 'package:link_up/widgets/custom_icon_button.dart';
import 'package:link_up/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

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
                          padding: getPadding(left: 16, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller: controller.searchController,
                                    hintText: "lbl_search_hospital".tr,
                                    margin: getMargin(top: 8),
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
                                    padding: getPadding(top: 25),
                                    child: Text("msg_closest_hospital".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtH5)),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 6),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration
                                            .outlineIndigo9000c
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "msg_my_health_care_hospital"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtH5Black900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_lagos_nigeria"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtMontserratRegular12)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Row(
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                32,
                                                                            width:
                                                                                32,
                                                                            variant:
                                                                                IconButtonVariant.FillYellow9000c,
                                                                            child: CustomImageView(svgPath: ImageConstant.imgStar)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 4,
                                                                                top: 3,
                                                                                bottom: 2),
                                                                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Padding(padding: getPadding(left: 1), child: Text("lbl_rating".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12Bluegray700)),
                                                                              Text("lbl_4_78_out_of_5".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12)
                                                                            ]))
                                                                      ]))
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIcon,
                                                        height: getSize(80),
                                                        width: getSize(80),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    16)))
                                                  ]),
                                              Container(
                                                  margin: getMargin(top: 16),
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 15,
                                                      right: 16,
                                                      bottom: 15),
                                                  decoration: AppDecoration
                                                      .fillGray5001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGlobe,
                                                            height: getSize(16),
                                                            width: getSize(16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text(
                                                                "msg_sunday_saturday"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold12)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height: getSize(16),
                                                            width: getSize(16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_24_hours"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold12))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 16,
                                                      right: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                            child: CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        38),
                                                                text:
                                                                    "lbl_contact"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            8))),
                                                        Expanded(
                                                            child: CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        38),
                                                                text: "lbl_view"
                                                                    .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBlue600,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .MontserratRegular16Blue600,
                                                                onTap:
                                                                    onTapView))
                                                      ]))
                                            ]))),
                                Container(
                                    margin: getMargin(top: 24),
                                    padding: getPadding(top: 4, bottom: 4),
                                    decoration: AppDecoration
                                        .outlineIndigo9000c1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 11, bottom: 8),
                                              child: Text("lbl_around_you".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular16)),
                                          CustomButton(
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(156),
                                              text: "lbl_blog".tr,
                                              variant:
                                                  ButtonVariant.FillBlue600)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(16));
                                        },
                                        itemCount: controller.homeModelObj.value
                                            .homeItemList.length,
                                        itemBuilder: (context, index) {
                                          HomeItemModel model = controller
                                              .homeModelObj
                                              .value
                                              .homeItemList[index];
                                          return HomeItemWidget(model);
                                        })))
                              ]))
                    ]))));
  }

  onTapView() {
    Get.toNamed(AppRoutes.hospitalProfileScreen);
  }
}
