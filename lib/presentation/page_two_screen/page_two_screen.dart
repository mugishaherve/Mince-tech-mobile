import 'notifier/page_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';
import 'package:mince_tech/widgets/custom_search_view.dart';

class PageTwoScreen extends ConsumerStatefulWidget {
  const PageTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageTwoScreenState createState() => PageTwoScreenState();
}

class PageTwoScreenState extends ConsumerState<PageTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              SizedBox(
                height: 710.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse11,
                      height: 295.v,
                      width: 151.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 195.v),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 121.v),
                        child: Consumer(
                          builder: (context, ref, _) {
                            return CustomSearchView(
                              width: 380.h,
                              controller:
                                  ref.watch(pageTwoNotifier).searchController,
                              hintText: "lbl_search_country".tr,
                              alignment: Alignment.topCenter,
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_choose_country".tr,
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                          SizedBox(height: 14.v),
                          Divider(
                            color: appTheme.gray600,
                          ),
                          SizedBox(height: 98.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 61.h,
                              right: 51.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 216.h,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_afghanistan_alb2".tr,
                                          style: CustomTextStyles
                                              .titleLargeff6b6b6b
                                              .copyWith(
                                            height: 2.00,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "msg_australia_austr".tr,
                                          style: CustomTextStyles
                                              .titleLargeff232266
                                              .copyWith(
                                            height: 2.00,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 30.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(
                                    left: 82.h,
                                    top: 322.v,
                                    bottom: 167.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLogo3,
                              height: 51.v,
                              width: 80.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 14.v,
                                bottom: 13.v,
                              ),
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
                                      style:
                                          CustomTextStyles.bodyMediumff6b6b6b,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                height: 65.v,
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL32,
                buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
