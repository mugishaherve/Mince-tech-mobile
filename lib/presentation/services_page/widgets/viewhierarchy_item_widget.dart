import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillDeepPurple.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 241.h,
                  margin: EdgeInsets.only(bottom: 23.v),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLetsIconsDoneRingRound,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          viewhierarchyItemModelObj.backendDevelopmentText!,
                          style: CustomTextStyles.bodyLargeGray900,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser34x57,
                  height: 34.v,
                  width: 57.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 16.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEpArrowUpBoldGray600,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 24.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.v),
            CustomImageView(
              imagePath: ImageConstant.imgGroup20418,
              height: 19.v,
              width: 203.h,
              margin: EdgeInsets.only(left: 38.h),
            ),
          ],
        ),
      ),
    );
  }
}
