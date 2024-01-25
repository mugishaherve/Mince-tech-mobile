import '../services_page/widgets/viewhierarchy_item_widget.dart';
import 'models/viewhierarchy_item_model.dart';
import 'notifier/services_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';
import 'package:mince_tech/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ServicesPage extends ConsumerStatefulWidget {
  const ServicesPage({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageState createState() => ServicesPageState();
}

class ServicesPageState extends ConsumerState<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Container(
              height: 719.v,
              width: 406.h,
              margin: EdgeInsets.only(left: 24.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1117,
                    height: 295.v,
                    width: 151.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 121.v),
                  ),
                  _buildFrame(context),
                  _buildViewHierarchy(context),
                  _buildYourTasks(context),
                ],
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
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEpArrowUpBold,
        margin: EdgeInsets.only(
          left: 34.h,
          top: 13.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_contrats".tr,
        margin: EdgeInsets.only(left: 97.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 39.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.fillDeeppurple100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgPhShuffleThin,
                          height: 23.v,
                          width: 22.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 4.h),
                        ),
                        SizedBox(height: 19.v),
                        Text(
                          "lbl_ongoing".tr,
                          style: CustomTextStyles.bodyLargeGray900,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: 99.v,
                    text: "lbl_complete".tr,
                    margin: EdgeInsets.only(left: 12.h),
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 19.h),
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgFluentcloudsynccomplete20regular,
                        height: 25.v,
                        width: 24.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillOnPrimary,
                    buttonTextStyle: CustomTextStyles.bodyLargeGray900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.fillTeal5001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgUimProcess,
                          height: 24.v,
                          width: 23.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 16.h),
                        ),
                        SizedBox(height: 23.v),
                        Text(
                          "lbl_in_process".tr,
                          style: CustomTextStyles.bodyLargeGray900,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.all(12.h),
                    decoration: AppDecoration.fillDeepOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 24.v,
                          width: 23.h,
                          padding: EdgeInsets.all(1.h),
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgMaterialSymbolDeepOrange400,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_canceled".tr,
                            style: CustomTextStyles.bodyLargeGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: 277.v,
          right: 26.h,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 14.v,
                );
              },
              itemCount: ref
                      .watch(servicesNotifier)
                      .servicesModelObj
                      ?.viewhierarchyItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model = ref
                        .watch(servicesNotifier)
                        .servicesModelObj
                        ?.viewhierarchyItemList[index] ??
                    ViewhierarchyItemModel();
                return ViewhierarchyItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourTasks(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(3.h, 233.v, 53.h, 458.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_your_tasks".tr,
              style: CustomTextStyles.bodyLarge18_1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.bodyLargeGray900_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
