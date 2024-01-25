import 'notifier/page_eleven_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';

class PageElevenScreen extends ConsumerStatefulWidget {
  const PageElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageElevenScreenState createState() => PageElevenScreenState();
}

class PageElevenScreenState extends ConsumerState<PageElevenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
          child: Column(
            children: [
              _buildVerifyYourPhone(context),
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
  Widget _buildVerifyYourPhone(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 393.v,
        width: 402.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse118,
              height: 295.v,
              width: 151.h,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 27.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_verify_your_phone".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 30.v),
                    SizedBox(
                      width: 375.h,
                      child: Text(
                        "msg_enter_your_phone".tr,
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
            CustomImageView(
              imagePath: ImageConstant.imgGroup256,
              height: 54.v,
              width: 353.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ],
        ),
      ),
    );
  }
}
