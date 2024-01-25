import 'notifier/frame_222_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:mince_tech/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title_button.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';

class Frame222Screen extends ConsumerStatefulWidget {
  const Frame222Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Frame222ScreenState createState() => Frame222ScreenState();
}

class Frame222ScreenState extends ConsumerState<Frame222Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 383.h,
          margin: EdgeInsets.only(top: 15.v),
          decoration: AppDecoration.fillDeepPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "msg_singing_at_a_concert".tr,
                  style: CustomTextStyles.bodyLargeGray900_1,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcTwotoneHowToReg,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_livia".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 103.h,
                        margin: EdgeInsets.only(bottom: 13.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMingcuteStopwatchLine,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Text(
                              "lbl_2_weeks".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      CustomElevatedButton(
                        width: 147.h,
                        text: "lbl_complete".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 6.h),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgMaterialsymbolslightdoneall,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
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
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 115.v,
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            AppbarSubtitleThree(
              text: "msg_drawing_for_at_bells".tr,
              margin: EdgeInsets.only(
                left: 2.h,
                right: 120.h,
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 179.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgIcTwotoneHowToReg,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  AppbarSubtitleTwo(
                    text: "msg_at_bells_company".tr,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 3.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgMingcuteStopwatchLine,
                  margin: EdgeInsets.only(bottom: 13.v),
                ),
                AppbarSubtitleTwo(
                  text: "lbl_5_days".tr,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 1.v,
                    bottom: 11.v,
                  ),
                ),
                AppbarTitleButton(
                  margin: EdgeInsets.only(left: 118.h),
                ),
              ],
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
