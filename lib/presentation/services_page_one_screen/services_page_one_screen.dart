import '../services_page_one_screen/widgets/gameicongrid_item_widget.dart';
import '../services_page_one_screen/widgets/icongrid_item_widget.dart';
import 'models/gameicongrid_item_model.dart';
import 'models/icongrid_item_model.dart';
import 'notifier/services_page_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_icon_button.dart';

class ServicesPageOneScreen extends ConsumerStatefulWidget {
  const ServicesPageOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageOneScreenState createState() => ServicesPageOneScreenState();
}

class ServicesPageOneScreenState extends ConsumerState<ServicesPageOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 414.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIconGrid(context),
                      SizedBox(height: 13.v),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        color: appTheme.indigo50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Container(
                          height: 110.v,
                          width: 80.h,
                          decoration: AppDecoration.fillIndigo50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    right: 6.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: CustomIconButton(
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgMaterialSymbol,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.v),
                                      SizedBox(
                                        width: 63.h,
                                        child: Text(
                                          "msg_track_your_progress".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumGray900
                                              .copyWith(
                                            height: 1.31,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.h,
                                    vertical: 7.v,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                        height: 50.adaptSize,
                                        width: 50.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMaterialSymbol,
                                        ),
                                      ),
                                      SizedBox(height: 5.v),
                                      SizedBox(
                                        width: 63.h,
                                        child: Text(
                                          "msg_track_your_progress".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumGray900
                                              .copyWith(
                                            height: 1.31,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2.v),
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
              Container(
                height: 404.v,
                width: 206.h,
                margin: EdgeInsets.only(
                  left: 19.h,
                  bottom: 364.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildGameIconGrid(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1115,
                      height: 295.v,
                      width: 151.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
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
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEpArrowUpBold,
        margin: EdgeInsets.only(
          left: 34.h,
          top: 14.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_all_services".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildIconGrid(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, _) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 111.v,
              crossAxisCount: 2,
              mainAxisSpacing: 22.h,
              crossAxisSpacing: 22.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: ref
                    .watch(servicesPageOneNotifier)
                    .servicesPageOneModelObj
                    ?.icongridItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              IcongridItemModel model = ref
                      .watch(servicesPageOneNotifier)
                      .servicesPageOneModelObj
                      ?.icongridItemList[index] ??
                  IcongridItemModel();
              return IcongridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGameIconGrid(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          right: 27.h,
          bottom: 173.v,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 111.v,
                crossAxisCount: 2,
                mainAxisSpacing: 19.h,
                crossAxisSpacing: 19.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: ref
                      .watch(servicesPageOneNotifier)
                      .servicesPageOneModelObj
                      ?.gameicongridItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                GameicongridItemModel model = ref
                        .watch(servicesPageOneNotifier)
                        .servicesPageOneModelObj
                        ?.gameicongridItemList[index] ??
                    GameicongridItemModel();
                return GameicongridItemWidget(
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
