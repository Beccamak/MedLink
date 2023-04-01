import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:link_up/core/app_export.dart';
import 'package:link_up/core/utils/validation_functions.dart';
import 'package:link_up/widgets/custom_button.dart';
import 'package:link_up/widgets/custom_text_form_field.dart';
import 'package:link_up/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                        getPadding(left: 18, top: 42, right: 18, bottom: 42),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 4),
                              child: Text("lbl_sign_up".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium30)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: Padding(
                                  padding: getPadding(left: 4, top: 20),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue600,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left))),
                          Padding(
                              padding: getPadding(top: 50),
                              child: Text("lbl_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMail,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1)),
                                CustomTextFormField(
                                    width: getHorizontalSize(196),
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.nameplaceholderController,
                                    hintText: "msg_enter_your_full".tr,
                                    margin: getMargin(left: 8, top: 1),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
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
                                  endIndent: getHorizontalSize(14))),
                          Padding(
                              padding: getPadding(left: 4, top: 31),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(left: 4, top: 10),
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
                                  indent: getHorizontalSize(4),
                                  endIndent: getHorizontalSize(10))),
                          Padding(
                              padding: getPadding(left: 3, top: 48),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(left: 3, top: 9, right: 11),
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
                                  indent: getHorizontalSize(3),
                                  endIndent: getHorizontalSize(11))),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_sign_up2".tr,
                              margin: getMargin(left: 13, top: 30, right: 14),
                              shape: ButtonShape.RoundedBorder16,
                              padding: ButtonPadding.PaddingAll14,
                              onTap: onTapSignup,
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(left: 97, top: 25),
                              child: Text("msg_or_continue_with".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16)),
                          Padding(
                              padding: getPadding(left: 93, top: 35, bottom: 8),
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

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapImgFacebook() {
    Get.toNamed(AppRoutes.signInScreen);
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
