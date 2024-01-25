import 'notifier/services_page_four_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ServicesPageFourPage extends ConsumerStatefulWidget {
  const ServicesPageFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageFourPageState createState() => ServicesPageFourPageState();
}

class ServicesPageFourPageState extends ConsumerState<ServicesPageFourPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              children: [
                SizedBox(
                  height: 470.v,
                  width: 411.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      _buildGraph(context),
                      Padding(
                        padding: EdgeInsets.fromLTRB(21.h, 140.v, 90.h, 308.v),
                        child: _buildTop(
                          context,
                          dynamicText: "msg_track_your_progress2".tr,
                          weekly: "lbl_weekly".tr,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 412.v,
                          width: 411.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              _buildFrame(context),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1116,
                                height: 295.v,
                                width: 151.h,
                                alignment: Alignment.bottomRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40.h,
                    right: 90.h,
                  ),
                  child: _buildTop(
                    context,
                    dynamicText: "msg_project_overview".tr,
                    weekly: "lbl_weekly".tr,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildGraph1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEpArrowUpBold,
        margin: EdgeInsets.only(
          left: 34.h,
          top: 12.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_analytics".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGraph(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 1.h,
          top: 170.v,
          right: 30.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 40.h,
          vertical: 38.v,
        ),
        decoration: AppDecoration.outlineDeepPurpleC.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 38.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 43.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_1000".tr,
                          style: CustomTextStyles.labelMediumGray500,
                        ),
                        Container(
                          height: 1.v,
                          width: 12.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_800".tr,
                        style: CustomTextStyles.labelMediumGray500,
                      ),
                      Container(
                        height: 1.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_600".tr,
                        style: CustomTextStyles.labelMediumGray500,
                      ),
                      Container(
                        height: 1.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_400".tr,
                        style: CustomTextStyles.labelMediumGray500,
                      ),
                      Container(
                        height: 1.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_200".tr,
                        style: CustomTextStyles.labelMediumGray500,
                      ),
                      Container(
                        height: 1.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 222.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 1.h,
                endIndent: 29.h,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 72.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 118.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 127.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 63.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                          Container(
                            height: 105.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 85.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 105.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 85.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                          Container(
                            height: 79.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 111.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 149.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 41.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                          Container(
                            height: 161.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 29.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 64.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 126.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                          Container(
                            height: 154.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 36.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 135.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 55.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                          Container(
                            height: 177.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 13.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Container(
                            height: 191.v,
                            width: 3.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Container(
                                height: 10.v,
                                width: 1.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray500,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_jan".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 10.v,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_feb".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Container(
                                height: 10.v,
                                width: 1.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray500,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_mar".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray500,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_apr".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray500,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_may".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 10.v,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_jun".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 10.v,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 7.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_jul".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray500,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_aug".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray500,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_sep".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 10.v,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_oct".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Container(
                                height: 10.v,
                                width: 1.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray500,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_nov".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Container(
                                height: 10.v,
                                width: 1.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray500,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_dec".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          right: 25.h,
          bottom: 292.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 13.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillDeeppurple100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45.v,
                      width: 150.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_7".tr,
                              style: CustomTextStyles.bodyLargeGray900,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "msg_ongoing_contracts".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: 41.v,
                      width: 164.h,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 13.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_45".tr,
                      style: CustomTextStyles.bodyLargeGray900,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "msg_complete_contacts".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1,
                      height: 45.v,
                      width: 164.h,
                    ),
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
  Widget _buildGraph1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 30.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 38.v,
      ),
      decoration: AppDecoration.outlineDeepPurpleC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 38.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 36.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_100".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      Container(
                        height: 1.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.deepPurple100,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_90".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_80".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_70".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_60".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_50".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_40".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_30".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_20".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_10".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 1.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 222.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.deepPurple100,
              indent: 1.h,
              endIndent: 29.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTwoLines,
                    height: 191.v,
                    width: 264.h,
                  ),
                  Divider(
                    color: appTheme.deepPurple100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurple100,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_jan".tr,
                              style: CustomTextStyles.labelSmallGray600_1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurple100,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_feb".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.deepPurple100,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_mar".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 10.v,
                              width: 1.h,
                              margin: EdgeInsets.only(right: 8.h),
                              decoration: BoxDecoration(
                                color: appTheme.deepPurple100,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_apr".tr,
                            style: CustomTextStyles.labelSmallGray600,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 10.v,
                            width: 1.h,
                            decoration: BoxDecoration(
                              color: appTheme.deepPurple100,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_may".tr,
                            style: CustomTextStyles.labelSmallGray600,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurple100,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_jun".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 7.h),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurple100,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_jul".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 10.v,
                            width: 1.h,
                            decoration: BoxDecoration(
                              color: appTheme.deepPurple100,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_aug".tr,
                            style: CustomTextStyles.labelSmallGray600,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 10.v,
                            width: 1.h,
                            decoration: BoxDecoration(
                              color: appTheme.deepPurple100,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_sep".tr,
                            style: CustomTextStyles.labelSmallGray600,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 10.v,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurple100,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_oct".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.deepPurple100,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_nov".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            Container(
                              height: 10.v,
                              width: 1.h,
                              decoration: BoxDecoration(
                                color: appTheme.deepPurple100,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_dec".tr,
                              style: CustomTextStyles.labelSmallGray600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTop(
    BuildContext context, {
    required String dynamicText,
    required String weekly,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.bodyMediumGray60013.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            weekly,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }
}
