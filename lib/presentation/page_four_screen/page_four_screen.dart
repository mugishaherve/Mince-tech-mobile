import 'notifier/page_four_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/domain/googleauth/google_auth_helper.dart';
import 'package:mince_tech/domain/facebookauth/facebook_auth_helper.dart';

class PageFourScreen extends ConsumerStatefulWidget {
  const PageFourScreen({Key? key}) : super(key: key);

  @override
  PageFourScreenState createState() => PageFourScreenState();
}

class PageFourScreenState extends ConsumerState<PageFourScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 43.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 434.v,
                          width: 339.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse111,
                                height: 295.v,
                                width: 151.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 42.v)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    height: 434.v,
                                    width: 280.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24.h),
                                                  child: Text(
                                                      "msg_let_s_get_started"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .headlineSmall))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCharmingFemini,
                                              height: 357.v,
                                              width: 269.h,
                                              alignment: Alignment.bottomLeft),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 180.h, top: 63.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 24.h,
                                                      vertical: 27.v),
                                                  decoration: AppDecoration
                                                      .fillDeeppurple50099
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder50),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(height: 3.v),
                                                        SizedBox(
                                                            width: 49.h,
                                                            child: Text(
                                                                "lbl_999_users"
                                                                    .tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 24.h),
                                                        child: Text(
                                                            "msg_let_s_get_started"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .headlineSmall)),
                                                    SizedBox(height: 25.v),
                                                    SizedBox(
                                                        height: 371.v,
                                                        width: 280.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgCharmingFemini,
                                                                  height: 357.v,
                                                                  width: 269.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Container(
                                                                      margin: EdgeInsets.only(left: 180.h),
                                                                      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v),
                                                                      decoration: AppDecoration.fillDeeppurple50099.copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                        SizedBox(
                                                                            height:
                                                                                3.v),
                                                                        SizedBox(
                                                                            width: 49
                                                                                .h,
                                                                            child: Text("lbl_999_users".tr,
                                                                                maxLines: 2,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.center,
                                                                                style: theme.textTheme.titleMedium))
                                                                      ])))
                                                            ]))
                                                  ]))
                                        ])))
                          ]))),
                  SizedBox(height: 26.v),
                  CustomOutlinedButton(
                      text: "msg_continue_with_google".tr,
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 19.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                              height: 35.adaptSize,
                              width: 35.adaptSize)),
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle: CustomTextStyles.bodyLarge18,
                      onPressed: () {
                        onTapContinueWithGoogle(context);
                      }),
                  SizedBox(height: 26.v),
                  _buildFacebookRow(context),
                  SizedBox(height: 53.v),
                  _buildLoginSignUpRow(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgLogo3,
            margin: EdgeInsets.fromLTRB(23.h, 2.v, 327.h, 2.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 100.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_mince2".tr, style: theme.textTheme.bodyMedium),
                  TextSpan(text: " "),
                  TextSpan(
                      text: "lbl_tech".tr,
                      style: CustomTextStyles.bodyMediumff6b6b6b)
                ]),
                textAlign: TextAlign.left)));
  }

  /// Section Widget
  Widget _buildFacebookRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFacebookRow(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25.h),
            padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 8.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  margin: EdgeInsets.only(top: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 5.v, bottom: 3.v),
                  child: Text("msg_continue_with_facebook".tr,
                      style: CustomTextStyles.bodyLarge18))
            ])));
  }

  /// Section Widget
  Widget _buildLoginSignUpRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              height: 59.v,
              width: 190.h,
              text: "lbl_login".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL29,
              buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer19),
          CustomElevatedButton(
              height: 59.v,
              width: 179.h,
              text: "lbl_signup".tr,
              margin: EdgeInsets.only(left: 11.h),
              buttonStyle: CustomButtonStyles.fillPrimaryContainer,
              buttonTextStyle: CustomTextStyles.bodyLargePrimary19)
        ]));
  }

  onTapContinueWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapFacebookRow(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
