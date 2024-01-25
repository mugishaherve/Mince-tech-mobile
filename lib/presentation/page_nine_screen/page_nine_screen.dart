import 'notifier/page_nine_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/core/utils/validation_functions.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/widgets/custom_text_form_field.dart';

class PageNineScreen extends ConsumerStatefulWidget {
  const PageNineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageNineScreenState createState() => PageNineScreenState();
}

class PageNineScreenState extends ConsumerState<PageNineScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 40.v),
                child: Column(
                  children: [
                    Text(
                      "msg_create_new_account".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 62.v),
                    _buildEmail(context),
                    SizedBox(height: 76.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 41.h,
                        right: 48.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.only(
                              top: 6.v,
                              bottom: 31.v,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 1.h,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 310.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_i_have_read_and2".tr,
                                      style: CustomTextStyles.bodyLargeff6b6b6b,
                                    ),
                                    TextSpan(
                                      text: "lbl_terms".tr,
                                      style:
                                          CustomTextStyles.bodyLargeff23226617,
                                    ),
                                    TextSpan(
                                      text: "lbl_and".tr,
                                      style: CustomTextStyles.bodyLargeff6b6b6b,
                                    ),
                                    TextSpan(
                                      text: "lbl_conditions".tr,
                                      style:
                                          CustomTextStyles.bodyLargeff23226617,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 62.v),
                    _buildContinueButton(context),
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
  Widget _buildEmailEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(pageNineNotifier).emailEditTextController,
          hintText: "msg_enter_your_email2".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 17.h, 11.v),
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
            if (value == null || (!isValidEmail(value, isRequired: true))) {
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
    );
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(pageNineNotifier).firstNameEditTextController,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 15.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(pageNineNotifier).lastNameEditTextController,
          hintText: "lbl_last_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 15.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewPasswordEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(pageNineNotifier).newPasswordEditTextController,
          hintText: "msg_enter_new_password".tr,
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
              ref.read(pageNineNotifier.notifier).changePasswordVisibility();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 13.v),
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: ref.watch(pageNineNotifier).isShowPassword,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(pageNineNotifier).confirmPasswordEditTextController,
          hintText: "msg_confirm_password".tr,
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
              ref.read(pageNineNotifier.notifier).changePasswordVisibility1();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 13.v),
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: ref.watch(pageNineNotifier).isShowPassword1,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 358.v,
        width: 405.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse116,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 25.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildEmailEditText(context),
                    SizedBox(height: 22.v),
                    _buildFirstNameEditText(context),
                    SizedBox(height: 22.v),
                    _buildLastNameEditText(context),
                    SizedBox(height: 22.v),
                    _buildNewPasswordEditText(context),
                    SizedBox(height: 22.v),
                    _buildConfirmPasswordEditText(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(
        left: 39.h,
        right: 38.h,
      ),
    );
  }
}
