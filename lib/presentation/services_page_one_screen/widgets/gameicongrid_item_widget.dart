import '../models/gameicongrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GameicongridItemWidget extends StatelessWidget {
  GameicongridItemWidget(
    this.gameicongridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GameicongridItemModel gameicongridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder3,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: gameicongridItemModelObj?.gameIcon,
              ),
            ),
            SizedBox(height: 5.v),
            SizedBox(
              width: 50.h,
              child: Text(
                gameicongridItemModelObj.payText!,
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
      ),
    );
  }
}
