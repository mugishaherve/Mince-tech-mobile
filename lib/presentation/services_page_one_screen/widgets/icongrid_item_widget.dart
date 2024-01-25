import '../models/icongrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class IcongridItemWidget extends StatelessWidget {
  IcongridItemWidget(
    this.icongridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IcongridItemModel icongridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillTeal,
            alignment: Alignment.center,
            child: CustomImageView(
              imagePath: icongridItemModelObj?.icon,
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 51.h,
            child: Text(
              icongridItemModelObj.text!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray900.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
