import '../home_page/widgets/fiftysix_item_widget.dart';
import '../home_page/widgets/viewhierarchysection_item_widget.dart';
import 'models/fiftysix_item_model.dart';
import 'models/viewhierarchysection_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
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
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Column(
                    children: [
                      _buildJoinNowSection(context),
                      SizedBox(height: 40.v),
                      _buildRecentTasksSection(context),
                      SizedBox(height: 10.v),
                      _buildViewHierarchySection(context),
                    ],
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
  Widget _buildExplorerOurServicesSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(right: 61.h),
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6.v),
            Text(
              "msg_14_days_of_free".tr,
              style: CustomTextStyles.titleMediumInter,
            ),
            SizedBox(height: 1.v),
            Container(
              width: 169.h,
              margin: EdgeInsets.only(left: 3.h),
              child: Text(
                "msg_this_webpage_requires".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray600,
              ),
            ),
            SizedBox(height: 12.v),
            CustomElevatedButton(
              height: 33.v,
              width: 90.h,
              text: "lbl_join_now".tr,
              margin: EdgeInsets.only(left: 3.h),
              buttonStyle: CustomButtonStyles.fillOnErrorContainer,
              buttonTextStyle: CustomTextStyles.bodyMediumGray900_1,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJoinNowSection(BuildContext context) {
    return SizedBox(
      height: 360.v,
      width: 411.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 111.v,
              ),
              child: Text(
                "msg_explorer_our_services".tr,
                style: CustomTextStyles.bodyLarge18_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 40.h,
                bottom: 113.v,
              ),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.bodyLargeGray900_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 158.v),
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 202.v,
                  width: 411.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 202.v,
                          width: 411.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              _buildExplorerOurServicesSection(context),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCharmingFemini,
                                      height: 192.v,
                                      width: 145.h,
                                      margin: EdgeInsets.only(bottom: 10.v),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 22.v,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 23.h,
                                        vertical: 18.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillOnPrimary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 6.v),
                                          Text(
                                            "lbl_new_product_out".tr,
                                            style: CustomTextStyles
                                                .titleMediumInterGray900,
                                          ),
                                          SizedBox(height: 82.v),
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 3.h,
                                              right: 211.h,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 13.h,
                                              vertical: 4.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillOnErrorContainer
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 2.v),
                                                Text(
                                                  "lbl_buy_now".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 5.h,
                          child: Text(
                            "msg_be_the_first_to".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 360.v,
              child: Consumer(
                builder: (context, ref, _) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 65.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 47.h,
                      );
                    },
                    itemCount: ref
                            .watch(homeNotifier)
                            .homeModelObj
                            ?.fiftysixItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      FiftysixItemModel model = ref
                              .watch(homeNotifier)
                              .homeModelObj
                              ?.fiftysixItemList[index] ??
                          FiftysixItemModel();
                      return FiftysixItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentTasksSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.h,
          right: 40.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_recent_tasks".tr,
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

  /// Section Widget
  Widget _buildViewHierarchySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 20.h,
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
                height: 15.v,
              );
            },
            itemCount: ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.viewhierarchysectionItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ViewhierarchysectionItemModel model = ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.viewhierarchysectionItemList[index] ??
                  ViewhierarchysectionItemModel();
              return ViewhierarchysectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
