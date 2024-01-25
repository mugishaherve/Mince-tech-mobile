import 'notifier/page_twelve_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';

class PageTwelveScreen extends ConsumerStatefulWidget {
  const PageTwelveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageTwelveScreenState createState() => PageTwelveScreenState();
}

class PageTwelveScreenState extends ConsumerState<PageTwelveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 823.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1112,
                height: 295.v,
                width: 151.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 98.v),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 56.h,
                    right: 56.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "msg_verify_your_fingerprint".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      Spacer(
                        flex: 32,
                      ),
                      SizedBox(
                        width: 318.h,
                        child: Text(
                          "msg_scan_your_fingerprint".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                      Spacer(
                        flex: 33,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFingerprint,
                        height: 66.v,
                        width: 59.h,
                      ),
                      Spacer(
                        flex: 34,
                      ),
                      Text(
                        "lbl_0".tr,
                        style: CustomTextStyles.bodyLargeGray90018,
                      ),
                    ],
                  ),
                ),
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
}
