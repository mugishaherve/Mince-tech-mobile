import '../services_page_two_screen/widgets/servicespagetwogrid_item_widget.dart';
import 'models/servicespagetwogrid_item_model.dart';
import 'notifier/services_page_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_checkbox_button.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';

class ServicesPageTwoScreen extends ConsumerStatefulWidget {
  const ServicesPageTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageTwoScreenState createState() => ServicesPageTwoScreenState();
}

class ServicesPageTwoScreenState extends ConsumerState<ServicesPageTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Container(
              height: 748.v,
              width: 405.h,
              margin: EdgeInsets.only(
                left: 25.h,
                bottom: 5.v,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1119,
                    height: 295.v,
                    width: 151.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 123.v),
                  ),
                  _buildDoneStack(context),
                  _buildFrame(context),
                  _buildServicesPageTwoGrid(context),
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
          top: 12.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_project_overview".tr,
        margin: EdgeInsets.only(left: 90.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoneStack(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.deepPurple50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 224.v,
          width: 380.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 23.v,
          ),
          decoration: AppDecoration.fillDeepPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "msg_web_design_and_prototype".tr,
                    style: CustomTextStyles.bodyLargeGray900_1,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 22.v,
                  ),
                  child: Text(
                    "msg_for_a_t_bells_company".tr,
                    style: CustomTextStyles.bodyMediumGray60014,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 110.adaptSize,
                  width: 110.adaptSize,
                  margin: EdgeInsets.only(bottom: 8.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 110.adaptSize,
                          width: 110.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: theme.colorScheme.onPrimary,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_602".tr,
                          style: CustomTextStyles.bodyMediumGray60014,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 143.h,
                    right: 3.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUilCalender,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 74.h),
                      ),
                      SizedBox(height: 31.v),
                      Text(
                        "lbl_team".tr,
                        style: CustomTextStyles.bodyMediumGray60014,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup20420,
                        height: 36.v,
                        width: 107.h,
                      ),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                        height: 46.v,
                        width: 128.h,
                        text: "lbl_done".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL23,
                        buttonTextStyle:
                            CustomTextStyles.bodyLargeOnErrorContainer17,
                        alignment: Alignment.centerRight,
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
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Consumer(
                            builder: (context, ref, _) {
                              return CustomCheckboxButton(
                                text: "msg_templete_complete".tr,
                                value: ref
                                    .watch(servicesPageTwoNotifier)
                                    .templetecomplete,
                                onChange: (value) {
                                  ref
                                      .read(servicesPageTwoNotifier.notifier)
                                      .changeCheckBox1(value);
                                },
                              );
                            },
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgUser34x57,
                          height: 30.v,
                          width: 51.h,
                          margin: EdgeInsets.only(top: 17.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEpArrowUpBoldGray600,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            top: 20.v,
                            bottom: 5.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup20418Yellow600,
                    height: 19.v,
                    width: 203.h,
                    margin: EdgeInsets.only(left: 34.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 9.v),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 22.v),
                              child: Consumer(
                                builder: (context, ref, _) {
                                  return CustomCheckboxButton(
                                    text: "msg_ui_design_and_marking".tr,
                                    value: ref
                                        .watch(servicesPageTwoNotifier)
                                        .uidesignandmarking,
                                    onChange: (value) {
                                      ref
                                          .read(
                                              servicesPageTwoNotifier.notifier)
                                          .changeCheckBox2(value);
                                    },
                                  );
                                },
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUser34x57,
                              height: 30.v,
                              width: 51.h,
                              margin: EdgeInsets.only(top: 16.v),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEpArrowUpBoldGray600,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 19.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup20418Green400,
                    height: 19.v,
                    width: 203.h,
                    margin: EdgeInsets.only(left: 36.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 61.v,
                    width: 319.h,
                    margin: EdgeInsets.only(top: 8.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgGroup20418Onerrorcontainer,
                          height: 19.v,
                          width: 203.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 36.h),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 319.h,
                            margin: EdgeInsets.only(bottom: 14.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 23.v),
                                  child: Consumer(
                                    builder: (context, ref, _) {
                                      return CustomCheckboxButton(
                                        text: "lbl_final_deign".tr,
                                        value: ref
                                            .watch(servicesPageTwoNotifier)
                                            .finaldeign,
                                        onChange: (value) {
                                          ref
                                              .read(servicesPageTwoNotifier
                                                  .notifier)
                                              .changeCheckBox3(value);
                                        },
                                      );
                                    },
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUser34x57,
                                  height: 30.v,
                                  width: 51.h,
                                  margin: EdgeInsets.only(top: 16.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEpArrowUpBoldGray600,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 28.v,
                      bottom: 20.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 26.v,
                    width: 17.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 36.v,
                    ),
                  ),
                  Container(
                    height: 62.v,
                    width: 313.h,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      top: 7.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine7,
                          height: 19.v,
                          width: 202.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 313.h,
                            margin: EdgeInsets.only(bottom: 14.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 21.v),
                                  child: Text(
                                    "msg_prototype_decision".tr,
                                    style: CustomTextStyles.bodyLargeGray90017,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUser34x57,
                                  height: 30.v,
                                  width: 51.h,
                                  margin: EdgeInsets.only(top: 17.v),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgEpArrowUpBoldGray600,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 7.h,
                                    top: 20.v,
                                    bottom: 5.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServicesPageTwoGrid(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(11.h, 257.v, 42.h, 404.v),
        child: Consumer(
          builder: (context, ref, _) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 43.v,
                crossAxisCount: 3,
                mainAxisSpacing: 18.h,
                crossAxisSpacing: 18.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: ref
                      .watch(servicesPageTwoNotifier)
                      .servicesPageTwoModelObj
                      ?.servicespagetwogridItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ServicespagetwogridItemModel model = ref
                        .watch(servicesPageTwoNotifier)
                        .servicesPageTwoModelObj
                        ?.servicespagetwogridItemList[index] ??
                    ServicespagetwogridItemModel();
                return ServicespagetwogridItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
