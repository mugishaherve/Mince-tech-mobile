import '../page_ten_screen/widgets/resetpasswordpage_item_widget.dart';
import 'models/resetpasswordpage_item_model.dart';
import 'notifier/page_ten_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_outlined_button.dart';

class PageTenScreen extends ConsumerStatefulWidget {
  const PageTenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PageTenScreenState createState() => PageTenScreenState();
}

class PageTenScreenState extends ConsumerState<PageTenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 475.v,
                  width: 377.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            right: 63.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_reset_password".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 32.v),
                              SizedBox(
                                width: 303.h,
                                child: Text(
                                  "msg_choose_from_the".tr,
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
                      _buildResetPasswordPage(context),
                    ],
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 37.v),
              CustomOutlinedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 38.h,
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

  /// Section Widget
  Widget _buildResetPasswordPage(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 101.v),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.5.v),
                  child: SizedBox(
                    width: 329.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray600,
                    ),
                  ),
                );
              },
              itemCount: ref
                      .watch(pageTenNotifier)
                      .pageTenModelObj
                      ?.resetpasswordpageItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ResetpasswordpageItemModel model = ref
                        .watch(pageTenNotifier)
                        .pageTenModelObj
                        ?.resetpasswordpageItemList[index] ??
                    ResetpasswordpageItemModel();
                return ResetpasswordpageItemWidget(
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
