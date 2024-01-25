import 'notifier/page_thirteen_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';

class PageThirteenOneScreen extends ConsumerStatefulWidget {
  const PageThirteenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageThirteenOneScreenState createState() => PageThirteenOneScreenState();
}

class PageThirteenOneScreenState extends ConsumerState<PageThirteenOneScreen> {
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
                imagePath: ImageConstant.imgEllipse1113,
                height: 295.v,
                width: 151.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 98.v),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "msg_verify_your_face".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 43.v),
                      SizedBox(
                        width: 340.h,
                        child: Text(
                          "msg_scan_your_face_with".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                      SizedBox(height: 40.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgFaceRecognitio,
                        height: 343.v,
                        width: 236.h,
                      ),
                      SizedBox(height: 44.v),
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
