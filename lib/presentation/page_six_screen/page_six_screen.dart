import 'notifier/page_six_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/core/utils/validation_functions.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/widgets/custom_text_form_field.dart';

class PageSixScreen extends ConsumerStatefulWidget {
  const PageSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageSixScreenState createState() => PageSixScreenState();
}

class PageSixScreenState extends ConsumerState<PageSixScreen> {
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
                      "lbl_forgot_password".tr,
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
  Widget _buildContinueStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 307.v,
        width: 405.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse113,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.topRight,
            ),
            CustomOutlinedButton(
              width: 380.h,
              text: "lbl_continue".tr,
              alignment: Alignment.bottomLeft,
            ),
            Consumer(
              builder: (context, ref, _) {
                return CustomTextFormField(
                  width: 380.h,
                  controller: ref.watch(pageSixNotifier).emailController,
                  hintText: "msg_enter_your_email".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  alignment: Alignment.topLeft,
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
          ],
        ),
      ),
    );
  }
}
