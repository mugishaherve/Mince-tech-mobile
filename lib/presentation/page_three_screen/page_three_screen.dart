import 'notifier/page_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';

class PageThreeScreen extends ConsumerStatefulWidget {
  const PageThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageThreeScreenState createState() => PageThreeScreenState();
}

class PageThreeScreenState extends ConsumerState<PageThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 26.v),
              SizedBox(
                height: 555.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse11295x151,
                      height: 295.v,
                      width: 151.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 48.v),
                    ),
                    _buildSecureYourFuture(context),
                    _buildWidget(context),
                  ],
                ),
              ),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                height: 65.v,
                text: "lbl_get_started".tr,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL32,
                buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 55.v,
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
  Widget _buildSecureYourFuture(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 34.h,
          right: 40.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 228.h,
              child: Text(
                "msg_secure_your_future".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displaySmall!.copyWith(
                  height: 1.14,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 355.h,
              child: Text(
                "msg_it_is_a_long_established".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLarge17_1.copyWith(
                  height: 1.41,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        height: 339.v,
        width: 389.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup65,
              height: 339.v,
              width: 237.h,
              alignment: Alignment.centerLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThemeRemovebgPreview,
              height: 200.v,
              width: 329.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 54.v),
            ),
          ],
        ),
      ),
    );
  }
}
