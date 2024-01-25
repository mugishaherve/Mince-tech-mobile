import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          width: 147.h,
          text: "lbl_progress".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 17.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgStreamlinegrapharrowincrease,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
        ),
      ),
    );
  }
}
