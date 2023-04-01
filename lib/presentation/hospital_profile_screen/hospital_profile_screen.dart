import '../hospital_profile_screen/widgets/listmyhealthcarehos_one_item_widget.dart';
import 'controller/hospital_profile_controller.dart';
import 'models/listmyhealthcarehos_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';
import 'package:link_up/presentation/home_page/home_page.dart';
import 'package:link_up/presentation/hospitals_page/hospitals_page.dart';
import 'package:link_up/widgets/app_bar/custom_app_bar.dart';
import 'package:link_up/widgets/custom_bottom_bar.dart';
import 'package:link_up/widgets/custom_icon_button.dart';

class HospitalProfileScreen extends GetWidget<HospitalProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
          ),
          leadingWidth: 48,
          leading: CustomIconButton(
            height: 32,
            width: 32,
            margin: getMargin(
              left: 16,
              top: 12,
              bottom: 12,
            ),
            padding: IconButtonPadding.PaddingAll10,
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowright,
            ),
          ),
          centerTitle: true,
          title: Text(
            "lbl_profile".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtH5Gray900,
          ),
          actions: [
            CustomIconButton(
              height: 32,
              width: 32,
              margin: getMargin(
                left: 15,
                top: 12,
                right: 15,
                bottom: 12,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgMailBlue600,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame758531060,
                height: getVerticalSize(
                  235,
                ),
                width: getHorizontalSize(
                  375,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    4,
                  ),
                ),
                margin: getMargin(
                  top: 11,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 19,
                    top: 28,
                    right: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame758531061,
                          height: getVerticalSize(
                            59,
                          ),
                          width: getHorizontalSize(
                            91,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          margin: getMargin(
                            right: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame758531062,
                          height: getVerticalSize(
                            59,
                          ),
                          width: getHorizontalSize(
                            91,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          margin: getMargin(
                            left: 16,
                            right: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame758531063,
                          height: getVerticalSize(
                            59,
                          ),
                          width: getHorizontalSize(
                            91,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 23,
                    right: 9,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            21,
                          ),
                        );
                      },
                      itemCount: controller.hospitalProfileModelObj.value
                          .listmyhealthcarehosOneItemList.length,
                      itemBuilder: (context, index) {
                        ListmyhealthcarehosOneItemModel model = controller
                            .hospitalProfileModelObj
                            .value
                            .listmyhealthcarehosOneItemList[index];
                        return ListmyhealthcarehosOneItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 26,
                ),
                child: Text(
                  "lbl_our_services".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtH5Black900,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 19,
                    top: 15,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame758531069,
                          height: getVerticalSize(
                            90,
                          ),
                          width: getHorizontalSize(
                            156,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame758531070,
                          height: getVerticalSize(
                            90,
                          ),
                          width: getHorizontalSize(
                            156,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          margin: getMargin(
                            left: 25,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame758531071,
                          height: getVerticalSize(
                            90,
                          ),
                          width: getHorizontalSize(
                            156,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          margin: getMargin(
                            left: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_cardiology".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold12,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 115,
                      ),
                      child: Text(
                        "lbl_surgery".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 44,
                ),
                child: Text(
                  "lbl_our_facilities".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold16,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  left: 18,
                  right: 52,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_pharmacy".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold12Black900,
                    ),
                    Text(
                      "msg_consultation_center".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold12Black900,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Register:
        return "/";
      case BottomBarEnum.Hospitals:
        return AppRoutes.hospitalsPage;
      case BottomBarEnum.Doctors:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.hospitalsPage:
        return HospitalsPage();
      default:
        return DefaultWidget();
    }
  }
}
