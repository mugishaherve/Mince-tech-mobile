import 'notifier/services_page_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ServicesPageThreePage extends ConsumerStatefulWidget {
  const ServicesPageThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageThreePageState createState() => ServicesPageThreePageState();
}

class ServicesPageThreePageState extends ConsumerState<ServicesPageThreePage>
    with AutomaticKeepAliveClientMixin<ServicesPageThreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 704.v,
                    width: 403.h,
                    margin: EdgeInsets.only(left: 27.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1118,
                          height: 295.v,
                          width: 151.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 71.v),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 23.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildBackendDevelopmentRow(context),
                                SizedBox(height: 16.v),
                                _buildBackendDevelopmentRow1(context),
                                SizedBox(height: 16.v),
                                _buildBackendDevelopmentColumn(context),
                              ],
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBackendDevelopmentRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              bottom: 5.v,
            ),
            child: _buildNinetyTwoColumn(
              context,
              backendDevelopment: "msg_backend_development".tr,
              forATBellsCompany: "msg_for_a_t_bells_company".tr,
              team: "lbl_team".tr,
              eventDate: "msg_19_november_2024".tr,
            ),
          ),
          Container(
            height: 120.adaptSize,
            width: 120.adaptSize,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 42.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 120.adaptSize,
                    width: 120.adaptSize,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackendDevelopmentRow1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              bottom: 5.v,
            ),
            child: _buildNinetyTwoColumn(
              context,
              backendDevelopment: "msg_backend_development".tr,
              forATBellsCompany: "msg_for_a_t_bells_company".tr,
              team: "lbl_team".tr,
              eventDate: "msg_19_november_2024".tr,
            ),
          ),
          Container(
            height: 120.adaptSize,
            width: 120.adaptSize,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 42.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 120.adaptSize,
                    width: 120.adaptSize,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackendDevelopmentColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 17.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_backend_development".tr,
                        style: CustomTextStyles.bodyMediumGray900_1,
                      ),
                      Text(
                        "msg_for_a_t_bells_company".tr,
                        style: CustomTextStyles.bodyMediumGray60014,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "lbl_team".tr,
                        style: CustomTextStyles.bodyMediumGray60014,
                      ),
                      SizedBox(height: 7.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup20420,
                        height: 36.v,
                        width: 107.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  margin: EdgeInsets.only(top: 16.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 120.adaptSize,
                          width: 120.adaptSize,
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
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: _buildUilCalender(
              context,
              dateText: "msg_19_november_2024".tr,
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNinetyTwoColumn(
    BuildContext context, {
    required String backendDevelopment,
    required String forATBellsCompany,
    required String team,
    required String eventDate,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          backendDevelopment,
          style: CustomTextStyles.bodyMediumGray900_1.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          forATBellsCompany,
          style: CustomTextStyles.bodyMediumGray60014.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          team,
          style: CustomTextStyles.bodyMediumGray60014.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 7.v),
        CustomImageView(
          imagePath: ImageConstant.imgGroup20420,
          height: 36.v,
          width: 107.h,
        ),
        SizedBox(height: 30.v),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUilCalender,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                eventDate,
                style: CustomTextStyles.bodyMediumGray60014.copyWith(
                  color: appTheme.gray600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUilCalender(
    BuildContext context, {
    required String dateText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUilCalender,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            dateText,
            style: CustomTextStyles.bodyMediumGray60014.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }
}
