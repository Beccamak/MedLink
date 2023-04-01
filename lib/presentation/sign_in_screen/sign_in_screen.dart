import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';
import 'package:link_up/core/utils/validation_functions.dart';
import 'package:link_up/widgets/custom_button.dart';
import 'package:link_up/widgets/custom_checkbox.dart';
import 'package:link_up/widgets/custom_text_form_field.dart';
import 'package:link_up/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 21, top: 42, right: 21, bottom: 42),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 1),
                              child: Text("lbl_sign_in2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium30)),
                          Padding(
                              padding: getPadding(left: 1, top: 21),
                              child: Text("msg_if_you_don_t_have".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtYoucanregister();
                              },
                              child: Padding(
                                  padding: getPadding(left: 1, top: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_you_can".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_register_here".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue600,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left))),
                          Padding(
                              padding: getPadding(left: 1, top: 74),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(left: 1, top: 10),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMail,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1)),
                                CustomTextFormField(
                                    width: getHorizontalSize(231),
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.emailplaceholderController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(left: 8, top: 1),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    })
                              ])),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blue600,
                                  indent: getHorizontalSize(1),
                                  endIndent: getHorizontalSize(7))),
                          Padding(
                              padding: getPadding(top: 48),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(top: 9, right: 8),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPadlockoutline,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 2)),
                                CustomTextFormField(
                                    width: getHorizontalSize(195),
                                    focusNode: FocusNode(),
                                    controller: controller
                                        .passwordplaceholderController,
                                    hintText: "msg_enter_your_password".tr,
                                    margin: getMargin(left: 8, top: 2),
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    isObscureText: true),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgHide,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 2))
                              ])),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blue600,
                                  endIndent: getHorizontalSize(8))),
                          Padding(
                              padding: getPadding(top: 13, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(() => CustomCheckbox(
                                        text: "lbl_remember_me".tr,
                                        iconSize: getHorizontalSize(12),
                                        value: controller.checkbox.value,
                                        margin: getMargin(bottom: 1),
                                        fontStyle:
                                            CheckboxFontStyle.PoppinsRegular12,
                                        onChange: (value) {
                                          controller.checkbox.value = value;
                                        })),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("msg_forgot_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular12))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_sign_in3".tr,
                              margin: getMargin(left: 10, top: 43, right: 11),
                              shape: ButtonShape.RoundedBorder16,
                              padding: ButtonPadding.PaddingAll14,
                              onTap: onTapSignin,
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(left: 94, top: 25),
                              child: Text("msg_or_continue_with".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16)),
                          Padding(
                              padding: getPadding(left: 90, top: 35, bottom: 8),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFacebookWhiteA700,
                                    height: getSize(48),
                                    width: getSize(48),
                                    margin: getMargin(top: 1),
                                    onTap: () {
                                      onTapImgFacebook();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getVerticalSize(48),
                                    width: getHorizontalSize(45),
                                    margin: getMargin(left: 39, bottom: 1),
                                    onTap: () {
                                      onTapImgGoogle();
                                    })
                              ]))
                        ])))));
  }

  onTapTxtYoucanregister() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapImgFacebook() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
