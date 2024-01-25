import 'notifier/page_eight_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/core/utils/validation_functions.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/widgets/custom_text_form_field.dart';

class PageEightScreen extends ConsumerStatefulWidget {
  const PageEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageEightScreenState createState() => PageEightScreenState();
}

class PageEightScreenState extends ConsumerState<PageEightScreen> {
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
                      "msg_re_enter_password".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 59.v),
                    _buildContinueStack(context),
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
  Widget _buildContinueButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 380.h,
      text: "lbl_continue".tr,
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(pageEightNotifier).emailEditTextController,
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
  Widget _buildNewPasswordEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(pageEightNotifier).newPasswordEditTextController,
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
              ref.read(pageEightNotifier.notifier).changePasswordVisibility();
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
          obscureText: ref.watch(pageEightNotifier).isShowPassword,
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
              ref.watch(pageEightNotifier).confirmPasswordEditTextController,
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
              ref.read(pageEightNotifier.notifier).changePasswordVisibility1();
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
          obscureText: ref.watch(pageEightNotifier).isShowPassword1,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinueStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 327.v,
        width: 405.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse115,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.topRight,
            ),
            _buildContinueButton(context),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 25.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildEmailEditText(context),
                    SizedBox(height: 26.v),
                    _buildNewPasswordEditText(context),
                    SizedBox(height: 26.v),
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
}
