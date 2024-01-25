import 'notifier/page_five_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/core/utils/validation_functions.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/widgets/custom_text_form_field.dart';

class PageFiveScreen extends ConsumerStatefulWidget {
  const PageFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageFiveScreenState createState() => PageFiveScreenState();
}

class PageFiveScreenState extends ConsumerState<PageFiveScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 43.v),
                child: Column(
                  children: [
                    Text(
                      "msg_log_into_your_account".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 60.v),
                    _buildLoginForm(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLogo3,
        margin: EdgeInsets.fromLTRB(23.h, 2.v, 327.h, 2.v),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 100.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_mince2".tr,
                style: theme.textTheme.bodyMedium,
              ),
              TextSpan(
                text: " ",
              ),
              TextSpan(
                text: "lbl_tech".tr,
                style: CustomTextStyles.bodyMediumff6b6b6b,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 307.v,
        width: 405.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse112,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 25.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomTextFormField(
                          controller:
                              ref.watch(pageFiveNotifier).emailController,
                          hintText: "msg_bateteangenadette_gmail_com".tr,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 8.v, 9.h, 11.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMdilightemail,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          contentPadding: EdgeInsets.only(
                            top: 15.v,
                            right: 30.h,
                            bottom: 15.v,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 46.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomTextFormField(
                          controller:
                              ref.watch(pageFiveNotifier).passwordController,
                          hintText: "msg_type_your_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 8.v, 11.h, 11.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                          suffix: InkWell(
                            onTap: () {
                              ref
                                  .read(pageFiveNotifier.notifier)
                                  .changePasswordVisibility();
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 13.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHumbleiconseyeclose,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText:
                              ref.watch(pageFiveNotifier).isShowPassword,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 25.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                    SizedBox(height: 45.v),
                    CustomOutlinedButton(
                      text: "lbl_continue".tr,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
