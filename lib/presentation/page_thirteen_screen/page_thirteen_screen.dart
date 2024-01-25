import 'notifier/page_thirteen_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';
import 'package:mince_tech/widgets/custom_pin_code_text_field.dart';

class PageThirteenScreen extends ConsumerStatefulWidget {
  const PageThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageThirteenScreenState createState() => PageThirteenScreenState();
}

class PageThirteenScreenState extends ConsumerState<PageThirteenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
          child: Column(
            children: [
              _buildOtpView(context),
              SizedBox(height: 6.v),
              CustomOutlinedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
              ),
              SizedBox(height: 5.v),
            ],
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
  Widget _buildOtpView(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 393.v,
        width: 401.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1110,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 43.h,
                  right: 76.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_enter_pin".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 30.v),
                    SizedBox(
                      width: 281.h,
                      child: Text(
                        "msg_enter_the_pin_sent".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 174.v,
                right: 22.h,
                bottom: 165.v,
              ),
              child: Consumer(
                builder: (context, ref, _) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: ref.watch(pageThirteenNotifier).otpController,
                    onChanged: (value) {
                      ref.watch(pageThirteenNotifier).otpController?.text =
                          value;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
