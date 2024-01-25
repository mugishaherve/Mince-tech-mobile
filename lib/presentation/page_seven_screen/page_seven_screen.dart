import 'notifier/page_seven_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';

class PageSevenScreen extends ConsumerStatefulWidget {
  const PageSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageSevenScreenState createState() => PageSevenScreenState();
}

class PageSevenScreenState extends ConsumerState<PageSevenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 73.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 363.v,
                  width: 342.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse114,
                        height: 295.v,
                        width: 151.h,
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 91.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgNotiImg1,
                                height: 244.adaptSize,
                                width: 244.adaptSize,
                              ),
                              SizedBox(height: 36.v),
                              SizedBox(
                                width: 250.h,
                                child: Text(
                                  "msg_resent_password".tr,
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_receive_email2".tr,
                      style: CustomTextStyles.bodyLargeff000000,
                    ),
                    TextSpan(
                      text: "lbl_resend_email".tr,
                      style: CustomTextStyles.bodyLargeff232266,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
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
}
